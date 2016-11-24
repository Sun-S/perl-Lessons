#!/usr/bin/perl
use warnings;
use strict;
use diagnostics;
use utf8;
open my $PROTEIN, '<', $protein or die "$0 :failed to open input file ' $protein' : $!\n";

