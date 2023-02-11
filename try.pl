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

# $random = int( rand(51) ) + 25;
# print "$random\n";
#
# @chars    = ( "A" .. "Z", "a" .. "z", 0 .. 9, qw(! @ $ % ^ & *) );
# $password = join( "", @chars[ map { rand @chars } ( 1 .. 8 ) ] );
# print "$password\n";

# sub gaussian_rand {
#   my ( $u1, $u2 );    # uniformly distributed random numbers
#   my $w;              # variance, then a weight
#   my ( $g1, $g2 );    # gaussian-distributed numbers
#   do {
#     $u1 = 2 * rand() - 1;
#     $u2 = 2 * rand() - 1;
#     $w  = $u1 * $u1 + $u2 * $u2;
#   } while ( $w >= 1 || $w == 0 );
#   $w  = sqrt( ( -2 * log($w) ) / $w );
#   $g2 = $u1 * $w;
#   $g1 = $u2 * $w;
#
#   # return both if wanted, else just one
#   return wantarray ? ( $g1, $g2 ) : $g1;
# }
#
# # weight_to_dist: takes a hash mapping key to weight and returns
# # a hash mapping key to probability
# sub weight_to_dist {
#   my %weights = @_;
#   my %dist    = ();
#   my $total   = 0;
#   my ( $key, $weight );
#   local $_;
#   foreach ( values %weights ) {
#     $total += $_;
#   }
#   while ( ( $key, $weight ) = each %weights ) {
#     $dist{$key} = $weight / $total;
#   }
#   return %dist;
# }
#
# # weighted_rand: takes a hash mapping key to probability, and
# # returns the corresponding element
# sub weighted_rand {
#   my %dist = @_;
#   my ( $key, $weight );
#   while (1) {    # to avoid floating point inaccuracies
#     my $rand = rand;
#     while ( ( $key, $weight ) = each %dist ) {
#       return $key if ( $rand -= $weight ) < 0;
#     }
#   }
# }
#
# $mean   = 25;
# $sdev   = 2;
# $salary = gaussian_rand() * $sdev + $mean;
# printf( "You have been hired at \$%.2f\n", $salary );
#
# use Math::Random qw(random_normal);
# $salary = random_normal( 1, $mean, $sdev );
# printf( "You have been hired at \$%.2f\n", $salary );

# $degrees = 30;
# use Math::Trig;
# $radians = deg2rad($degrees);
# $degrees = rad2deg($radians);
# print "$degrees: $radians\n";

# sub log_base {
#   my ( $base, $value ) = @_;
#   return log($value) / log($base);
# }
# $answer = log_base( 10, 10_000 );
# print "log10(10,000) = $answer\n";
#
# use Math::Complex;
# printf "log2(1024) = %lf\n", logn( 1024, 2 );    # watch out for argument order!

# use PDL;
# $a = pdl [ [ 3, 2, 3 ], [ 5, 9, 8 ], ];
# $b = pdl [ [ 4, 7 ], [ 9, 3 ], [ 8, 1 ], ];
# $c = $a x $b;                                 # x overload
# print $c;

# use Math::Complex;
# $a = Math::Complex->new( 3, 5 );    # or Math::Complex->new(3,5);
# $b = Math::Complex->new( 2, -2 );
# $c = $a * $b;
# print "c = $c\n";
#
# use Math::Complex;
# $c = cplx( 3, 5 ) * cplx( 2, -2 );    # easier on the eye
# $d = 3 + 4 * i;                       # 3 + 4i
# printf "sqrt($d) = %s\n", sqrt($d);

# print "Gimme an integer in decimal, binary, octal, or hex: ";
# $num = <STDIN>;
# chomp $num;
# exit unless defined $num;
# $num = oct($num) if $num =~ /^0/;    # catches 077 0b10 0x20
# printf "%d %#x %#o %#b\n", ($num) x 4;

# print "Enter file permission in octal: ";
# $permissions = <STDIN>;
# die "Exiting ...\n" unless defined $permissions;
# chomp $permissions;
# $permissions = oct($permissions);    # permissions always octal
# print "The decimal value is $permissions\n";

# sub commify {
#   my $text = reverse $_[0];
#   $text =~ s/(\d\d\d)(?=\d)(?!\d*\.)/$1,/g;
#   return scalar reverse $text;
# }
#
# # more reasonable web counter :-)
# use Math::TrulyRandom;
# $hits   = truly_random_value();                                 # negative hits!
# $output = "Your web page received $hits accesses last month.\n";
# print commify($output);

# use Lingua::EN::Inflect qw(PL classical);
# classical(1);       # why isn't this the default?
# while (<DATA>) {    # each line in the data
#   for (split) {     # each word on the line
#     print "One $_, two ", PL($_), ".\n";
#   }
# }
#
# # plus one more
# $_ = 'secretary general';
# print "One $_, two ", PL($_), ".\n";
# __END__
# fish fly ox
# species genus phylum
# cherub radius jockey
# index matrix mythos
# phenomenon formula

# # bigfact - calculate prime factors
# use integer;
# our ( $opt_b, $opt_d );
# use Getopt::Std;
# @ARGV && getopts('bd') or die "usage: $0 [-b] number ...";
# load_biglib() if $opt_b;
# ARG: foreach my $orig (@ARGV) {
#   my ( $n, %factors, $factor );
#   $n = $opt_b ? Math::BigInt->new($orig) : $orig;
#   if ( $n + 0 ne $n ) {    # don't use -w for this
#     printf STDERR "bigfact: %s would become %s\n", $n, $n + 0 if $opt_d;
#     load_biglib();
#     $n = Math::BigInt->new($orig);
#   }
#   printf "%-10s ", $n;
#
#   # Here $sqi will be the square of $i. We will take advantage
#   # of the fact that ($i + 1) ** 2 == $i ** 2 + 2 * $i + 1.
#   for ( my ( $i, $sqi ) = ( 2, 4 ) ; $sqi <= $n ; $sqi += 2 * $i++ + 1 ) {
#     while ( $n % $i == 0 ) {
#       $n /= $i;
#       print STDERR "<$i>" if $opt_d;
#       $factors{$i}++;
#     }
#   }
#   if ( $n != 1 && $n != $orig ) { $factors{$n}++ }
#   if ( !%factors ) {
#     print "PRIME\n";
#     next ARG;
#   }
#   for $factor ( sort { $a <=> $b } keys %factors ) {
#     print "$factor";
#     if ( $factors{$factor} > 1 ) {
#       print "**$factors{$factor}";
#     }
#     print " ";
#   }
#   print "\n";
# }
#
# # this simulates a use, but at runtime
# sub load_biglib {
#   require Math::BigInt;
#   Math::BigInt->import();    #immaterial?
# }

