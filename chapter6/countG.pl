#!/usr/bin/perl -w
use strict;
my ($usage) = " $0 DNA\n\n";
unless (@ARGV) {
print $usage;
exit;
}
my $dna = $ARGV[0];
my $numG = countG($dna);
print "\nThe DNA $dna has $numG G in it!\n\n";
exit;
sub countG {
  my ($dna) = @_; 
  my ($count) = 0; 
  $count  =  ( $dna =~ tr/Gg// );
  return $count ;
}
