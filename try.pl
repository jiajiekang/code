use v5.10;
use Data::Dump qw(dump);
use open qw(:utf8 :std);
use utf8;

# use Regexp::Common;
# $string = "Gandalf departed from the Havens in 3021 TA.";
# print "Is an integer\n"           if $string =~ / ^ $RE{num}{int} $ /x;
# print "Contains the integer $1\n" if $string =~ / ( $RE{num}{int} ) /x;
#
# use Scalar::Util qw(looks_like_number);
# print "$0: hit ^D (your eof character) to exit\n";
# for ( ; ; ) {
#   my ( $on, $n );    # original string and its numeric value
#   print "Pick a number, any number: ";
#   $on = $n = <STDIN>;
#   last if !defined $n;
#   chomp( $on, $n );
#   $n =~ s/_//g;                  # allow 186_282.398_280_685
#   $n = oct($n) if $n =~ /^0/;    # allow 0xFF, 037, 0b1010
#   if ( looks_like_number($n) ) {
#     printf "Decimal double of $on is %g\n", 2 * $n;
#   }
#   else {
#     print "That doesn't look like a number to Perl.\n";
#   }
# }
# print "\nBye.\n";

# for $n ( 0.0000001, 10.1, 10.00001, 100000.1 ) {
#   printf "%12.4e %12.4f %12.4g\n", $n, $n, $n;
# }
#
# $a = 0.625;    # 1/2 + 1/8
# $b = 0.725;    # 725/1000, or 29/40
# printf "$_ is %.30g\n", $_ for $a, $b;
#
# $a = 0.325;    # 1/2 + 1/8
# $b = 0.725;    # 725/1000, or 29/40
# printf "%s is %.2f or %.30g\n", ($_) x 3 for $a, $b;

# for $n ( -4 .. +4 ) {
#   $n += 0.5;
#   printf "%4.1f %2.0f\n", $n, $n;
# }
#
# use POSIX qw(floor ceil);
# printf "%8s %8s %8s %8s %8s\n", qw(number even zero down up);
# for $n ( -6 .. +6 ) {
#   $n += 0.5;
#   printf "%8g %8.0f %8s %8s %8s\n", $n, $n, int($n), floor($n), ceil($n);
# }

# print "Infancy is: ";
# foreach ( 0 .. 2 ) {
#   print "$_ ";
# }
# print "\n";
# print "Toddling is: ";
# foreach $i ( 3 .. 4 ) {
#   print "$i ";
# }
# print "\n";
# print "Childhood is: ";
# for ( $i = 5 ; $i <= 12 ; $i++ ) {
#   print "$i ";
# }
# print "\n";

# use Roman;
# $roman_fifteen = roman(15);    # "xv"
# print "Roman for fifteen is $roman_fifteen\n";
# $arabic_fifteen = arabic($roman_fifteen);
# print "Converted back, $roman_fifteen is $arabic_fifteen\n";
#
# use Time::localtime;
# use Roman;
# printf "The year is now %s\n", Roman( 1900 + localtime->year );
#
# use charnames ":full";
# print "2003 is ", "\N{ROMAN NUMERAL ONE THOUSAND}" x 2,
#   "\N{ROMAN NUMERAL THREE}\n";
#
# use Math::Roman qw(roman);
# print $a = roman('I');    # I
# print $a += 2000;         # MMI
# print $a -= "III";        # MCMXCVIII
# print $a -= "MCM";        # XCVIII

$random = int( rand(51) ) + 25;
print "$random\n";

@chars    = ( "A" .. "Z", "a" .. "z", 0 .. 9, qw(! @ $ % ^ & *) );
$password = join( "", @chars[ map { rand @chars } ( 1 .. 8 ) ] );
print "$password\n";
