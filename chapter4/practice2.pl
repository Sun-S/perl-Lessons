#!/bin/usr/perl -w
use strict;
use utf8;
my @bases = ('A', 'C', 'G', 'T');
print "@bases,\n";
my $a = @bases;
print $a, "\n";
($a) = @bases;
print $a, "\n";
