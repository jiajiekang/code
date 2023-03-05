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

# # %food_color as per Introduction
# sub print_foods {
#   my @foods = keys %food_color;
#   my $food;
#   print "Keys: @foods\n";
#   print "Values: ";
#   foreach $food (@foods) {
#     my $color = $food_color{$food};
#     if ( defined $color ) {
#       print "$color ";
#     }
#     else {
#       print "(undef) ";
#     }
#   }
#   print "\n";
# }
#
# print "Initially:\n";
# print_foods();
# print "\nWith Banana undef\n";
# undef $food_color{"Banana"};
# print_foods();
# print "\nWith Banana deleted\n";
# delete $food_color{"Banana"};
# print_foods();

# while ( ( $food, $color ) = each(%food_color) ) {
#   print "$food is $color.\n";
# }
#
# foreach $food ( sort keys %food_color ) {
#   print "$food is $food_color{$food}.\n";
# }

# use Tie::IxHash;
# tie %food_color, "Tie::IxHash";
# $food_color{"Banana"} = "Yellow";
# $food_color{"Apple"}  = "Green";
# $food_color{"Lemon"}  = "Yellow";
# print "In insertion order, the foods are:\n";
# foreach $food ( keys %food_color ) {
#   print " $food\n";
# }
# print "Still in insertion order, the foods' colors are:\n";
# while ( ( $food, $color ) = each %food_color ) {
#   print "$food is colored $color.\n";
# }

# %ttys = ();
# open( WHO, "who|" ) or die "can't open who: $!";
# while (<WHO>) {
#   ( $user, $tty ) = split;
#   push( @{ $ttys{$user} }, $tty );
# }
# foreach $user ( sort keys %ttys ) {
#   print "$user: @{$ttys{$user}}\n";
# }

# %surname    = ( "Mickey" => "Mantle", "Babe" => "Ruth" );
# %first_name = reverse %surname;
# print $first_name{"Mantle"}, "\n";

