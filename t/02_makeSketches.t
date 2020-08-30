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
    0, 1, 3, 4, 5, 6, 7, 9, 10, 11
  );
  my $msh = Bio::Sketch::Perl->new("$RealBin/data/PNUSAL003567_R1_.fastq.gz",{
    sketchSize => 10,
  });

  is_deeply($$msh{sketches}[0]{hashes}, \@expectedHash, "Expected hashes");
  #die Dumper($$msh{sketches}[0]{hashes});
}
