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

our $VERSION = 0.2;

our @EXPORT_OK = qw(raw_mash_distance);

use overload
  '""' => 'toString';

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
    sketch    => {}, #  each element has keys
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

  # Count kmers the perl way
  my $kmerObj = Bio::Kmer->new($filename,{
    kmerlength=>$$self{kmerlength},
  });
  my $kmerCountsRaw = $kmerObj->kmers;

  # TODO filter kmers with count < X
  my %kmerCounts;
  while(my($kmer,$count)=each(%$kmerCountsRaw)){
    next if($count < 5);
    $kmerCounts{$kmer}=$count;
  }

  # For all kmers,
  # murmer32 hash them.
  # Next, sort numerically.
  my @sortedHash = sort{$a <=> $b}
                   map {(murmur32($_, $$self{hashSeed}))[0]}
                   keys(%kmerCounts);
  # Here is the part where we only keep the min hashes
  my @minHash    = splice(@sortedHash,0,$$self{sketchSize});

  $$self{bloomFilter}->add(@minHash);

  my %sketch = (
    name   => $filename,
    length => $kmerObj->ntcount,
    # TODO comment, e.g., "[2222 seqs] M04624:8:000000000-BFRRJ:1:1101:15905:1382 1:N:0:NGTACTAG+GCGTNAGA [...]",
    comment=> "[$numseqs seqs] $firstSeqid $nextseqs",
    #filter  => $$self{bloomFilter}{filter},
    hashes => \@minHash,
    kmer   => $$self{kmerlength},
    alphabet => "ACGT", # TODO actually make that determination
    preserveCase => 0,
    canonical    => 1,
    sketchSize   => $$self{sketchSize},
    hashType     => "murmur32",
    hashBits     => 32,
    hashSeed     => $$self{hashSeed},
  );
  $$self{sketch} = \%sketch;

  return 1;
}

sub info{
  my($self) = @_;

  return $$self{sketch}
}

##### Utility methods

sub toString{
  my($self)=@_;

  my %sketch = %{ $$self{sketch} };
  return Dumper \%sketch;
}

=pod

=head1 COPYRIGHT AND LICENSE

MIT license.

=head1 AUTHOR

Author:  Lee Katz <lkatz@cdc.gov>

For additional help, go to https://github.com/lskatz/bio--mash--perl

=cut

1; # gotta love how we we return 1 in modules. TRUTH!!!

