#!/usr/bin/perl -w
use strict;
use diagnostics;
use utf8;
my $dna = "AGCTAGCTTGCATGCA";
print "the dna strand:\n$dna\n\n";
my $revcom = reverse $dna;
$revcom =~ tr/ACGT/TGCA/;
print "here is the reverse complement dna:\n$revcom\n\n";
exit;
