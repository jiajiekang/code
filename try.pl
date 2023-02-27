use v5.10;
use Data::Dump qw(dump);
use open qw(:utf8 :std);
use utf8;

%food_color = (
  Apple  => "red",
  Banana => "yellow",
  Lemon  => "yellow",
  Carrot => "orange"
);

# %food_color as per Introduction
sub print_foods {
  my @foods = keys %food_color;
  my $food;
  print "Keys: @foods\n";
  print "Values: ";
  foreach $food (@foods) {
    my $color = $food_color{$food};
    if ( defined $color ) {
      print "$color ";
    }
    else {
      print "(undef) ";
    }
  }
  print "\n";
}

print "Initially:\n";
print_foods();
print "\nWith Banana undef\n";
undef $food_color{"Banana"};
print_foods();
print "\nWith Banana deleted\n";
delete $food_color{"Banana"};
print_foods();

