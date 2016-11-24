#!/usr/bin/perl
use warnings;
use strict;
use diagnostics;
use utf8;
my $protein = "protein.pep";
open my $PROTEIN, '<', $protein or die "$0 : failed to open input file ' $protein ' : $!\n";
$protein = <$PROTEIN>;
close $PROTEIN or warn "$0 : failed to close input file '$protein' : $!\n";
print $protein;
