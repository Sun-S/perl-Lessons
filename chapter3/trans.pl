#!/usr/bin/perl -w
use strict;
use diagnostics;
use utf8;
my $dna = "AAAGGGCCCCCT";
print "this is the dna:\n$dna\n\n";
my $rna = $dna;
$rna =~ s/T/U/g;
print "here is the rna:\n$rna\n\n";
exit;
( my $RNA = $dna) =~ s/T/U/g;
print "here is the RNA:\n$RNA\n\n";

