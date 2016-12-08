#!/usr/bin/perl -w
use strict;
use utf8;
print "please type the filename:\n";
my $file = <STDIN>;
chomp $file;
open my $DNAFILE, '<', $file or die "$0 : failed to input $file : $!\n";
my @DNA = <$DNAFILE>;
close $DNAFILE or warn "$0 : failed to close!\n";
my $DNA = join ( '', @DNA);
$DNA =~ s/\s//g;
@DNA = split( '', $DNA );
my $countA = 0;
my $countC = 0;
my $countG = 0;
my $countT = 0;
foreach my $base (@DNA) { 
  if ( $base eq 'A' ) {
  $countA++;
  }
  elsif ( $base eq 'C' ) {
  $countC++;
  }
  elsif ( $base eq 'G' ) {
  $countG++;
  }
  else {
  $countT++;
  }
}
print " A = $countA\n";
print " C = $countC\n";
print " G = $countG\n";
print " T = $countT\n";
