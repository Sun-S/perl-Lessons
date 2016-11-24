#!/usr/bin/perl -w
use strict;
use diagnostics;
use utf8;
my $dna1 = "ACGTTGGACA";
my $dna2 = "ACGT";
print " this is the first:\n$dna1\n";
print "this is the second :\n$dna2\n";
my $dna3 = "$dna1$dna2";
my $dna4 = $dna1 . $dna2;
print "this is the third:\n$dna3\n";
print "this is the forth:\n$dna4\n";
print "this is the fifth:\n";
print $dna1, $dna2, "\n";
