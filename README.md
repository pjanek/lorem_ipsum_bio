# lorem_ipsum_bio
[![Gem Version](https://badge.fury.io/rb/lorem_ipsum_bio.svg)](https://badge.fury.io/rb/lorem_ipsum_bio)
[![MIT Licence](https://badges.frapsoft.com/os/mit/mit.svg?v=103)](https://opensource.org/licenses/mit-license.php)
[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.png?v=103)](https://github.com/ellerbrock/open-source-badges/)

### Lorem Ipsum Bio is a Ruby gem for generating varied random biological sequences.

Few examples in interactive ruby shell:
```ruby
  >> require 'lorem_ipsum_bio'
  => true
  >> LoremIpsumBio.random_string(3, ['a', 'b', 'c'])
  => "bac"
  >> LoremIpsumBio.random_string(2, ['who', 'am', 'I'])
  => "Iam"
  >> LoremIpsumBio.random_DNA(3)
  => "TGA"
  >> LoremIpsumBio.random_RNA(3)
  => "UGA"
  >> LoremIpsumBio.random_protein(3)
  => "WTF"
```

Example of gem executable use:
```bash
  $ echo "> My own random fasta seq" > dna.fasta
  $ lorem_ipsum_bio 50 dna >> dna.fasta
  $ cat dna.fasta
  > My own random fasta seq
  GTCTGGTAAGAGTGATATCGCCTTGAGTGTCGAAATGGGTGTCCCCCCTC
```
