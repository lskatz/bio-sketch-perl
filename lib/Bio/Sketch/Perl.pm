#!/usr/bin/env perl
package Bio::Sketch::Perl;
use strict;
use warnings;
use Class::Interface qw/implements/;
use Exporter qw(import);
use File::Basename qw/fileparse basename dirname/;
use Data::Dumper;
use Bio::Kmer;
use Digest::MurmurHash3 qw/murmur32/;
use Bloom::Filter;
use Carp qw/carp croak/;

use JSON ();
use Encode qw/encode decode/;

&implements( 'Bio::Sketch' );

our $VERSION = 0.1;

our @EXPORT_OK = qw(raw_mash_distance);

local $0=basename $0;

# These functions are unimplemented but have to be
# listed because of the interface.
sub paste{
  ...;
}

=pod

=head1 NAME

Bio::Sketch::Perl

=head1 SYNOPSIS

A module for sketching with pure perl

  use strict;
  use warnings;
  use Bio::Sketch::Perl;

  my $msh1 = Bio::Sketch::Perl->new("file1.fastq.gz");
  my $msh2 = Bio::Sketch::Perl->new("file2.fastq.gz");

  # Get a value between zero and one, where zero
  # indicates the same sketch profile.
  my $distHash = $msh->dist($msh2);

=head1 DESCRIPTION

TODO

=head1 METHODS

=over

=item Bio::Sketch::Perl->new(filePath,\%options);

Create a new instance of Bio::Sketch::Perl.  One object per set of files.

  Arguments:  File to sketch (valid extensions: fastq.gz, fq.gz)
              Hash of options (none so far)
  Returns:    Bio::Sketch::Perl object

=back

=cut

sub new{
  my($class,$filename,$settings)=@_;

  # List all possible properties here;
  # set sane defaults
  my $self={
    file      => $filename,
    kmerlength=> 21,
    preserveCase=>0, # boolean
    alphabet  => "ACGT",
    canonical => 1,  # boolean
    sketchSize=> 1000,
    hashType  => "MurmurHash3_x64_128",
    hashBits  => 64,
    hashSeed  => 42,
    bloomFilter =>undef, # type Bloom::Filter
    bloomFilterCapacity => 1e8,  # >1
    bloomFilterErrorRate=> 1e-3, # between zero and one
    sketches  => [], # Array of hashes. Each hash has keys
                     #  name    => original filename
                     #  length  => integer of estimated genome size
                     #  comment => string description
                     #  hashes  => list of integers
  };
  bless($self,$class);

  $$self{bloomFilter} = Bloom::Filter->new(
    capacity    => $$self{bloomFilterCapacity},
    error_rate  => $$self{bloomFilterErrorRate},
  );

  if(!defined($filename)){
    die "ERROR: no file was given to ".$class."->new";
    return {};
  }
  if(!-e $filename){
    die "ERROR: could not find file $filename";
  }

  $self->sketch($filename);

  return $self;
}

# DOCUMENTATION TODO
sub sketch{
  my($self, $filename) = @_;
  if(!defined($$self{hashSeed}) || $$self{hashSeed} < 0){
    croak "ERROR: seed was not set for ".ref($self);
  }

  if(!-e $filename){
    croak "ERROR: file was not found: $filename";
  }
  if(!-r $filename){
    croak "ERROR: could not read file $filename";
  }

  my $numseqs = -1;
  my $firstSeqid = "firstseqid";
  my $nextseqs = "[...]";


  my $kmerObj = Bio::Kmer->new($filename,{
    kmerlength=>$$self{kmerlength},
  });
  my @hashBuffer;
  my $numHashes;
  my $kmerCounts = $kmerObj->kmers;
  while(my($kmer, $count) = each(%$kmerCounts)){
    my($v1,$v2,$v3,$v4) = murmur32($kmer, $$self{hashSeed});
    #$$self{bloomFilter}->add($v1);
    push(@hashBuffer, $v1);

    # If the number of hashes gets too large,
    # flush the buffer.
    if(@hashBuffer % 1e3 == 0){
      #carp "Adding ".scalar(@hashBuffer)." keys";
      $$self{bloomFilter}->add(@hashBuffer);
      @hashBuffer=();
      carp "DEBUG"; last;
    }
  }
  # Add the rest of the keys that have not been flushed yet
  $$self{bloomFilter}->add(@hashBuffer);

  my $filterStr = unpack("b*", $$self{bloomFilter}{filter});
  my $filterLength = length($filterStr);
  carp "DEBUG"; $filterLength = 1e8;
  my @onBits;
  for(my $i=0;$i<$filterLength;$i++){
    if(substr($filterStr,$i,1) == 1){
      push(@onBits, $i);
    }
  }

  # Try to match the mash info -d syntax
  my %sketch = (
    name   => $filename,
    length => 0, # TODO total number of bp
    # TODO comment, e.g., "[2222 seqs] M04624:8:000000000-BFRRJ:1:1101:15905:1382 1:N:0:NGTACTAG+GCGTNAGA [...]",
    comment => "[$numseqs seqs] $firstSeqid $nextseqs",
    hashes => \@onBits,
  );
  push(@{$$self{sketches}}, \%sketch);

  return \%sketch;
}

##### Utility methods

sub toString{
  my($self)=@_;
  my $return=ref($self)." object with " .scalar(@{ $self->{sketches} })." file(s):\n";
  for my $sketch(@{ $self->{sketches} }){
    $return.=$$sketch{name}."\n";
  }
  
  return $return;
}

=pod

=head1 COPYRIGHT AND LICENSE

MIT license.

=head1 AUTHOR

Author:  Lee Katz <lkatz@cdc.gov>

For additional help, go to https://github.com/lskatz/bio--mash--perl

=cut

1; # gotta love how we we return 1 in modules. TRUTH!!!

