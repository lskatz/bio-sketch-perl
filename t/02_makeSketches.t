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

subtest 'Sketch R1' => sub{
  my @expectedHash = (
    4338, 58643, 187309, 273874, 414654, 463783, 546713, 1200764, 1582113, 1939504
  );
  my $msh = Bio::Sketch::Perl->new("$RealBin/data/PNUSAL003567_R1_.fastq.gz",{
    kmerlength => 8,
    sketchSize => 10
  });

  is_deeply($$msh{sketch}{hashes}, \@expectedHash, "Expected hashes");
  #die Dumper($$msh{sketches}[0]{hashes});
}
