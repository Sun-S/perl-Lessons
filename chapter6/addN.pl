#!/usr/bin/perl -w
use strict;
print "please enter the DNA seq:\n";
my $dna = <STDIN>;
chomp $dna;
print $dna, "\n";
my $longer_dna = addN($dna);
print " i add another N to \n $dna \n and got \n  $longer_dna \n\n";
exit;
sub addN {
my ($dna) = @_;
$dna .= 'ACGT';
return $dna;
}
