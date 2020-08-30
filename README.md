# bio-sketch-perl
Pure perl implementation of min-hash sketching. 
Is almost definitely not compatible with Mash.

The idea here is to try to make functionality
totally in perl if possible to avoid system calls.
The truth though is that this implementation is
quite slow. However, I will accept pull requests
as long as they are captured in some unit testing.

## Workflow

I took a lot of short cuts and I probably will never get around to
making sure it is compatible with Mash, but I implemented the same 
kind of idea.

1. Uses `Bio::Kmer` to get kmers from a file
2. Gets a hash of each kmer with `Digest::MurmurHash3::murmurhash32`
(This murmur3 implementation is actually in C; I was not able to find
a pure perl version)
3. Adds hash to object `Bloom::Filter`
4. After all hashes are added, they are sorted and the minimum integers
are kept.

## Documentation

Detailed documentation is written in rich perldoc comments.
Run `perldoc lib/Bio/Sketch/Perl.pm` for more documentation.

## TODO

Need to do `dist()`

Probably need to do other things too.

