#!/usr/bin/perl -w
use strict;
my @i = ('1', '2', '3');
my @j = ('a', 'b', 'c');
print "in the main before: i= "."@i\n";
print "in the main before: j= "."@j\n";
reference(\@i, \@j);
print "in the main after: i= "."@i\n";
print "in the main after: j= "."@j\n";
exit;
sub reference {
  my ($i, $j) = @_;
  print " in the sub: i= "."@$i\n";
  print " in the sub: i= "."@$j\n";
  push(@$i,'4');
  shift(@$j);
}
