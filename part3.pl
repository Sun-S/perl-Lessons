#!/usr/bin/perl
use warnings;
use strict;
my $weight = 85;
my $height = 1.70;
my $low = 92;
my $high = 85;
my $age = 20;
my $sleep = 6;

my $num = BMI($height, $weight);
my $result = BMI_evaluate( $num );
my $blood = blood_pressure( $low, $high );
my $sleepy = sleepingtime( $age, $sleep);

exit;


sub BMI {
 my ( $heigh, $weigh ) = @_;
 my ($BMI);
 $BMI = ( $weigh / ( $heigh * $heigh ) ) ;
 return $BMI;
}


sub BMI_evaluate {
 my ( $value ) = @_;
 print "\nThe result is according to the criterion of WHO, which suits for the adult!\n";
 print "\n\n\nyour weight is $weight kg, your height is $height m, your BMI value is $value.\n";
 if ( $value < 18.5 ) {
   print "\nYou are underweight, please have more healthy things!\n ";
  } elsif (  $value >= 24.9 ) {
    print "\nYou are overweight, please do some exercise!\n ";
  } else {
    print "\nYou are standed, please keep!\n ";
  }
}


sub blood_pressure {
 my ( $systolic, $disatolic ) = @_;
 print "\n\n\nYour blood pressure is  $systolic/$disatolic mmhg.\n"; 
 if ( $systolic < 90 and $disatolic < 60 ) {
    print "\nYou are in low blood pressure, it's dangerous!\n";
   } elsif ($systolic > 160 and $disatolic > 95 ) {
    print "\nPlease try again! If your value doesn't change, it means you are in high blood pressure and it's risking your life. Please see the doctor!\n";
   } elsif ( ( $systolic > 90 and  $systolic < 140 ) and ( $disatolic > 60 and  $disatolic < 90 ) ) {
    print "\nYour blood pressure is regular, please keep!\n";
   } else {
   print "\nYou are at the edge of the high blood pressure. Please be ccareful about your health and eat fewer salty things!\n";
   }
}


sub sleepingtime {
 my ( $ag, $time ) = @_;
 print "\n\n\nYour real sleeping time is $time h.\n";
 if ( $ag > 60 ) {
   print "\nYou need 5.5~7h to sleep in fact.\n";
   if ( $time < 7.5 and $time > 5 ) {
     print "\nYour sleeping time is suitable!\n";
   } else {
      print "\nYour sleeping time is not suitable!\n";
   }
  } elsif ( $ag > 30 and $ag <= 60 ) {
   print "\nYou need about 7h for sleep in fact.\n";
   if ( $time < 7.5 and $time > 6.5 ) {
     print "\nYour sleeping time is suitable!\n";
   } else {
      print "\nYour sleeping time is not suitable!\n";
   }

  } elsif ( $ag > 13 and $ag <= 30  ) {
   print "\nYou need about 8h for sleep in fact.\n";
   if ( $time < 8.5 and $time > 7.5 ) {
     print "\nYour sleeping time is suitable!\n";
   } else {
      print "\nYour sleeping time is not suitable!\n";
   }
  } elsif ( $ag > 4 and $ag <= 13  ) {
   print "\nYou need 10~12h to sleep in fact.\n";
  } else {
   print "\nYou need a lot of time to sleep.\n";
  }
}
