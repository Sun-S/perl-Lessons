#!/bin/usr/perl -w
use strict;
use utf8;
my $protein = 'protein.pep';
open my $PROTEIN, '<', $protein or die "$0: failed to write $protein : $!\n";
while ( $protein = <$PROTEIN> ) {
  print " here is the line :\n";
  print $protein;
}
close $PROTEIN or warn "$0: failed to close\n";
exit;
