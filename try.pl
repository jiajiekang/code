use v5.10;
use Data::Dump qw(dump);
#
# $sepline = join '', "\n", "-" x 6, "\n";
#
# $record = {
#     NAME => "Jason",
#     EMPNO => 132,
#     TITLE => "deputy peon",
#     AGE => 23,
#     SALARY => 37_000,
#     PALS => [ "Norbert", "Rhys", "Phineas"],
# };
#
# printf "I am %s, and my pals are %s.\n",
# $record->{NAME}, join(", ", @{$record->{PALS}});
#
# $byname{ $record->{NAME} } = $record;
#
# if ($rp = $byname{"Aron"}) {
#     printf "Aron is emplyee %d.\n", $rp->{EMPNO};
# }
#
# push @{ $byname{"Jason"}->{PALS} }, "Theodore";
# printf "Jason now has %d pals\n", scalar @{$byname{"Jason"}->{PALS}};
#
# { local $record;
#     while (($name, $record) = each %byname) {
#         printf "%s is employee number %d\n", $name, $record->{EMPNO};
#     }
# }
#
# printf "%s\n", dump \%byname;
# print $sepline;
#
# $employees[ $record->{EMPNO} ] = $record;
#
# if ($rp = $employees[132]) {
#     printf "employee number 132 is %s\n", $rp->{NAME};
# };
#
# print $sepline;
#
# $record = {
#     NAME => "Jason",
#     EMPNO => 132,
#     TITLE => "deputy peon",
#     AGE => 23,
#     SALARY => 37_000,
#     PALS => [ "Norbert", "Rhys", "Phineas"],
# };
#
# use Clone 'clone';
# $record_1 = clone($record);
# @Array_of_Records = ($record, $record_1);
#
# for $record (@Array_of_Records) {
#     for $key (sort keys %$record) {
#         print "$key: $record->{$key}\n";
#     }
#     print "\n"
# };
#
# {
#     local $/="";
#     $ARGV[0] = 'records.txt';
#     @Array_of_Records = ();
#     while(<>) {
#         my @fields = split /^([^:]+):\s*/m;
#         shift @fields;
#         push @Array_of_Records, {map /(.*)/, @fields};
#     }
#     print dump @Array_of_Records;
# };

# use Dumpvalue;
# Dumpvalue->new->dumpvars("main", "INC");
#
# $func = sub {
# print "Hello\n";
# };
# use Data::Dumper;
# print Dumper $func;

use open qw(:utf8 :std);

# print "\xC4 and \x{0394} look different\n";

# $data = "ABCDEabc1111111122222222Hello";
# ($leading, $s1, $s2, $strailing) = unpack "A5 x3 A8 A8 A*", $data;
# print("leading: $leading, s1: $s1, s2: $s2, trailing: $strailing \n");

# $string = "This is what you have";
# substr( $string, 5, 2 ) = "wasn't";     # change "is" to "wasn't"
# substr( $string, -12 )  = "ondrous";    # "This wasn't wondrous"
# substr( $string, 0, 1 ) = "";           # delete first character
# substr( $string, -10 )  = "";           # delete last 10 characters

# # you can test substrings with =~
# if ( substr( $string, -10 ) =~ /pattern/ ) {
#   print "Pattern matches in last 10 characters\n";
# }
# substr($string, 0, 5) =~ s/is/at/g;
# print $string;

# $c = 5;
# $a = $b || $c;
# print "$a\n";

# $unistr = pack("U4",0x24b6,0x24b7,0x24b8,0x24b9);
# @unichars = unpack("U*", $unistr);
# printf "%#x, " x @unichars, @unichars;

# $hal  = "HAL";
# @byte = unpack( "C*", $hal );
# foreach $val (@byte) {
#   $val ^= 0b00100000;  # add one to each byte value
#   $val ^= 0b00100000;
# }
# $ibm = pack( "C*", @byte );
# print "$ibm\n";    # prints "IBM"

# @unicode_points = unpack( "U*", "fac\x{0327}ade" );
# print "@unicode_points\n";
# $word = pack( "U*", @unicode_points );
# print "$word\n";

# printf "%#vd\n", "fac\x{0327}ade";
# printf "%#vx\n", "fac\x{0327}print "\N{GREEK CAPITAL LETTER DELTA} is called delta.\n";ade";

# use charnames qw(:full :short greek Cyrillic);
# print "\N{GREEK CAPITAL LETTER DELTA} is called delta.\n";
# print "\N{greek:Delta} is an upper-case delta.\n";
# print "\N{Sigma} and \N{sigma} are Greek sigmas.\n";
# print "\N{Be} and \N{be} are Cyrillic bes.\n";

# use charnames qw(:full);
# for $code ( 0xc4, 0x394 ) {
#   printf "character u+%04x (%s) is named %s\n", $code, chr($code),
#     charnames::viacode($code);
# }
# $name = "music sharp sign";
# $code = charnames::vianame($name);
# printf "%s is character u+%04x (%s)\n", $name, $code, chr($code);

# use bytes;
# $string = "an apple a day";
# foreach $char ( unpack( 'C*', $string ) ) {
#   printf "%s has charactors %#04x\n", chr($char), ord $char;
#   printf "octbytes: %d\n", bytes::length($char);
# }

# $string = "an apple a day";
# $sum = 0;
# foreach $byteval ( unpack( "C*", $string ) ) {
#   $sum += $byteval;
# }
# $sum = unpack("%16C*", $string);
# use Digest::MD5 qw(md5);
# $sum = md5($string);
# print "sum is $sum\n";

# $string = "fac\x{0327}ade"; # "façade"
# $string =~ /fa.ade/; # fails
# $string =~ /fa\Xade/; # succeeds
# @chars = split(//, $string); # 7 letters in @chars
# @chars = $string =~ /(.)/g; # same thing
# print scalar @chars;
# @chars = $string =~ /(\X)/g; # 6 "letters" in @chars
# print "\n";
# print scalar @chars;

# for $word ( "anne\x{301}e", "nin\x{303}o" ) {
#   printf "%s simple reversed to %s\n", $word, scalar reverse $word;
#   printf "%s better reversed to %s\n", $word,
#     join( "", reverse $word =~ /\X/g );
# }

# use Unicode::Normalize;
# $s1 = "fa\x{E7}ade";
# $s2 = "fac\x{0327}ade";
# if (NFD($s1) eq NFD($s2)) { print "Yup!\n" }

use Unicode::Normalize;

$string = v231.780;
# LATIN SMALL LETTER C WITH CEDILLA
# COMBINING CARON
print "String: $string\n";
print "NFD:    ", NFD($string),  ",  NFC: ", NFC($string), "\n";
print "KNFD:   ", NFKD($string), ", KNFC: ", NFKC($string), "\n";

$string = v99.807.780;
# LATIN SMALL LETTER C
# COMBINING CARON
# COMBINING CEDILLA
print "String: $string\n";
print "NFD:    ", NFD($string),  ",  NFC: ", NFC($string), "\n";
print "KNFD:   ", NFKD($string), ", KNFC: ", NFKC($string), "\n";

$string = "\x{FB00}";
# LATIN SMALL LETTER C
# COMBINING CEDILLA
print "String: $string\n";
print "NFD:    ", NFD($string),  ",  NFC: ", NFC($string), "\n";
print "KNFD:   ", NFKD($string), ", KNFC: ", NFKC($string), "\n";

