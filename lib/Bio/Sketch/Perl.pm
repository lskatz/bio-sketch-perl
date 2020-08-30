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

our $startTime = time();

local $0=basename $0;

# These functions are unimplemented but have to be
# listed because of the interface.
sub paste{
  ...;
}
sub dist{
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
              Hash of options
                sketchSize => 1000,
                kmerlength => 21,
  Returns:    Bio::Sketch::Perl object

=back

=cut

sub new{
  my($class,$filename,$settings)=@_;
  $settings //= {};

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
    bloomFilterCapacity => 1e5,  # >1
    bloomFilterErrorRate=> 1e-6, # between zero and one
    sketches  => [], # Array of hashes. Each hash has keys
                     #  name    => original filename
                     #  length  => integer of estimated genome size
                     #  comment => string description
                     #  hashes  => list of integers
  };
  
  # Set some things from $settings
  for my $key(qw(sketchSize kmerlength)){
    if(defined($$settings{$key})){
      $$self{$key} = $$settings{$key};
    }
  }

  $$self{bloomFilter} = Bloom::Filter->new(
    capacity    => $$self{bloomFilterCapacity},
    error_rate  => $$self{bloomFilterErrorRate},
  );
  # Make the bloom filter a bit more deterministic
  my $salts = $$self{bloomFilter}{salts};
  $$self{bloomFilter}{salts} = [sort{ $a <=> $b } @$salts];
  # Avoid the warning that we are exceeding capacity
  # by setting the capacity after BF->new()
  $$self{bloomFilter}{capacity} = 1e8;

  if(!defined($filename)){
    die "ERROR: no file was given to ".$class."->new";
    return {};
  }
  if(!-e $filename){
    die "ERROR: could not find file $filename";
  }

  # Bless this mess
  bless($self,$class);

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
  my @sortedKmer = sort keys(%$kmerCounts);
  for my $kmer(@sortedKmer){
    # poor man's quick hashing
    #my $v = crypt($kmer, $$self{hashSeed});
    #$v =~ s/\D+//g;
    #$v = reverse($v);

    my ($v, $v2) = murmur32($kmer, $$self{hashSeed});
    push(@hashBuffer, $v);

    # If the number of hashes gets too large,
    # flush the buffer.
    if(@hashBuffer % 1e1 == 0){
      #carp "Adding ".scalar(@hashBuffer)." keys";
      $$self{bloomFilter}->add(@hashBuffer);
      @hashBuffer=();
      #carp "DEBUG on number of kmers"; last;
    }
  }
  # Add the rest of the keys that have not been flushed yet
  $$self{bloomFilter}->add(@hashBuffer);

  my $setbits = unpack("b*", $$self{bloomFilter}{filter});

  my @onBits;
  my $i=0;
  my $bufferSize = 50000;
  while($setbits){
    my $buffer = substr($setbits, 0, $bufferSize, "");
    
    # Test the whole buffer at once. If there is a one
    # anywhere in the string, then test individually.
    if($buffer !~ /1/){
      $i+=$bufferSize;
      next;
    }

    # If we made it this far, then the buffer has a one
    # in it somewhere and we'd like to know where.
    while($buffer){
      my $bool = substr($buffer,0,1,"");
      if($bool == 1){
        push(@onBits, $i);
      }
      $i++;
    }
  }

  # Keep minimum $sketchSize hashes
  @onBits = sort {$a<=>$b} @onBits;
  splice(@onBits, $$self{sketchSize});

  # Try to match the mash info -d syntax
  my %sketch = (
    name   => $filename,
    length => $kmerObj->ntcount, # TODO total number of bp
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

