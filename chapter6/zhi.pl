#!/usr/bin/perl -w
use strict;
my $i = 2;
simple_sub($i);
 print " in the main programme after the subroutine call ,\$i equals $i\n\n";
exit;
sub simple_sub {
  my ($i) = @_;
  $i += 100;
   print " in the  the simple_sub ,\$i equals $i\n\n";
}
