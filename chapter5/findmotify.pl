#!/usr/bin/perl -w
use strict;
use utf8;
print "please type the filename:\n";
my $file = <STDIN>;
chomp $file;
open my $PROTEIN, '<', $file or die "$0 : failed to input $file : $!\n";
my @protein = <$PROTEIN>;
close $PROTEIN or warn "$0 : failed to close the file!\n"; 
print "@protein\n";
my $protein = join ('', @protein);
print " this is the primary combination:\n$protein\n";
$protein =~ s/\s//g;
print " this is the secondary  combination:\n$protein\n";
my $motify = '';
do {
    print " enter a motif to search for:\n";
    $motify = <STDIN> ;
    chomp $motify;
    if ( $protein =~ m/$motify/ ) {
      print "i could find it!\n\n";
    } 
    else {
      print "i couldn't find it!\n\n";
    }
} until ( $motify =~ /^\s*$/ );
exit; 
