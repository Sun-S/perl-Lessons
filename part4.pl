#!/usr/bin/perl -w
print "please enter your name:\n";
my $name = <STDIN>;
chomp $name;
open (NEME,">$name");
close (NAME);
open my $SHUJU,'>>',$name or die "$0 : failed to open input file '%hash' : $!\n";
%hash = (
'age' => ' ',
'sex' => ' ',
'height' => ' ',
'weight' => ' ',
'taste' => ' ',
'pulse' => ' ',
'highblood' => ' ',
'lowblood' => ' ',
'sleephours' => ' ',
);

$hash{'sex'} = get_sex();
$hash{'age'} = get_age(); 
$hash{'height'} = get_height();
$hash{'weight'} = get_weight();
$hash{'taste'} = get_taste();
$hash{'pulse'} = get_pulse();
$hash{'highblood'} = get_highblood();
$hash{'lowblood'} = get_lowblood();
$hash{'sleephours'} = get_sleephours();

print "\n********************The following is the  evaluate!********************\n";
my $num = BMI($hash{'height'}, $hash{'weight'});
my $result = BMI_evaluate( $num );
my $blood = blood_pressure( $hash{'lowblood'}, $hash{'highblood'} );
my $sleepy = sleepingtime( $hash{'age'}, $hash{'sleephours'});


print "\n********************The following is the  diet, which is healthy and good for you!********************\n";



@keys = keys %hash;
@values = values %hash;
$count = keys %hash;
$count = values %hash;
$sun = information($key, $values);

select $SHUJU;
$sun = information($key, $values);
$name = "shuju";
close $SHUJU or warn  "$0 : failed to close input file '%hash' : $!\n";




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








sub get_sex {
print "tell me your sex,boy or girl:\n";
$sex = <STDIN>;
chomp $sex;
return $sex;
}

sub get_age {
print "your age:\n";
$age = <STDIN>;
chomp $age;
return $age;
}

sub get_height {
print "your height:\n";
$height = <STDIN>;
chomp $height;
return $height;
}

sub get_weight {
print "your weight:\n";
$weight = <STDIN>;
chomp $weight;
return $weight;
}

sub get_taste {
print "your taste among acid, sweet, ku, la, salt:\n";
$taste = <STDIN>;
chomp $taste;
return $taste;
}

sub get_pulse {
print "your pulse:\n";
$pulse = <STDIN>;
chomp $pulse;
return $pulse;
}

sub get_highblood {
print "your high blood:\n";
$highblood = <STDIN>;
chomp $highblood;
return $highblood;
}

sub get_lowblood {
print "your low blood:\n";
$lowblood = <STDIN>;
chomp $lowblood;
return $lowblood;
}

sub get_sleephours {
print "your sleep hours:\n";
$sleephours = <STDIN>;
chomp $sleephours;
return $sleephours;
}

sub information {
  ( $key, $values ) = @_;
 while (($key,$values) = each %hash){
print "$key => $values\n";
}
}



