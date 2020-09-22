#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use File::Spec;
use FindBin qw/$RealBin/;
use lib "$RealBin/../lib";
use lib "$RealBin/../lib/perl5";
BEGIN{$ENV{TEST_RANDOM_SEED} //= 42;}
use Test::Random;

use Test::More tests=>2;
use_ok("Bio::Sketch::Perl");

subtest 'Load' => sub{
  plan tests=>2;
  my $msh = Bio::Sketch::Perl->new("$RealBin/data/PNUSAL003567_R1_.fastq.gz",{
    kmerlength => 8,
    sketchSize => 10,
    hashSeed   => $ENV{TEST_RANDOM_SEED},
  });

  my $expected = openDmp("$RealBin/expected/PNUSAL003567_R1_.fastq.gz.dmp");
  delete($$expected{sketch}{name});
  delete($$msh{sketch}{name});
  delete($$expected{file});
  delete($$msh{file});

  is_deeply($msh, $expected, "Opened dmp file $RealBin/expected/PNUSAL003567_R1_.fastq.gz.dmp");

  $msh = Bio::Sketch::Perl->new("$RealBin/data/PNUSAL003567_R2_.fastq.gz",{
    kmerlength => 8,
    sketchSize => 10,
    hashSeed   => $ENV{TEST_RANDOM_SEED},
  });

  my $expected = openDmp("$RealBin/expected/PNUSAL003567_R2_.fastq.gz.dmp");
  delete($$expected{sketch}{name});
  delete($$msh{sketch}{name});
  delete($$expected{file});
  delete($$msh{file});

  is_deeply($msh, $expected, "Opened dmp file $RealBin/expected/PNUSAL003567_R2_.fastq.gz.dmp");
};

# Open a dmp file
sub openDmp{
  my($file) = @_;
  local $/ = undef;
  open(my $fh, $file) or BAIL_OUT("ERROR: could not open $file: $!");
  my $str = <$fh>;
  close $fh;

  no strict;
  my $obj = eval $str;
  return $obj;
}


