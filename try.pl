use v5.10;
use Data::Dump qw(dump);
use open qw(:utf8 :std);

# $char = chr(0x394);
# $code = ord($char);
# printf "char %s is code %d, %#04x\n", $char, $code, $code;
# use bytes;
# printf "byte length: %d", bytes::length $char;

# print "\xC4 and \x{0394} look different\n";

# $string = "This is what you have";

# +012345678901234567890 Indexing forwards (left to right)
# 109876543210987654321- Indexing backwards (right to left)
# # note that 0 means 10 or 20, etc. above
# $first = substr( $string, 0, 1 );     # "T"
# $start = substr( $string, 5, 2 );     # "is"
# $rest  = substr( $string, 13 );       # "you have"
# $last  = substr( $string, -1 );       # "e"
# $end   = substr( $string, -4 );       # "have"
# $piece = substr( $string, -8, 3 );    # "you"

# $data = "ABCDEabc1111111122222222Hello";
# ($leading, $s1, $s2, $strailing) = unpack "A5 x3 A8 A8 A*", $data;
# print("leading: $leading, s1: $s1, s2: $s2, trailing: $strailing \n");

# $string = "This is what you have";
# substr( $string, 5, 2 ) = "wasn't";     # change "is" to "wasn't"
# substr( $string, -12 )  = "ondrous";    # "This wasn't wondrous"
# substr( $string, 0, 1 ) = "";           # delete first character
# substr( $string, -10 )  = "";           # delete last 10 characters

# you can test substrings with =~
# if ( substr( $string, -10 ) =~ /pattern/ ) {
#   print "Pattern matches in last 10 characters\n";
# }
# substr($string, 0, 5) =~ s/is/at/g;
# print $string;

# exchange the first and last letters in a string
# $a = "make a hat";
# ( substr( $a, 0, 1 ), substr( $a, -1 ) ) =
#   ( substr( $a, -1 ), substr( $a, 0, 1 ) );
# print $a;

# extract column with unpack
# $a = "To be or not to be";
# $b = unpack("x6 A6", $a); # skip 6, grab 6
# print $b;
# ($b, $c) = unpack("x6 A2 X5 A2", $a); # forward 6, grab 2; backward 5, grab 2
# print "$b\n$c\n";

# sub cut2fmt {
#   my (@positions) = @_;
#   my $template    = '';
#   my $lastpos     = 1;
#   foreach $place (@positions) {
#     $template .= "A" . ( $place - $lastpos ) . " ";
#     $lastpos = $place;
#   }
#   $template .= "A*";
#   return $template;
# }
# $fmt = cut2fmt( 8, 14, 20, 26, 30 );
# print "$fmt\n";



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

# $string =  "\x{1F60D}";
# print "$string\n";

# use bytes;
# use Encode qw(decode encode);
# $octstr = encode('UTF-8', $string);

# foreach $char ( unpack( 'C*', $octstr ) ) {
#   printf "has charactors %#04x\n", $char;
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

# use Unicode::Normalize;

# $string = v231.780;
# # LATIN SMALL LETTER C WITH CEDILLA
# # COMBINING CARON
# print "String: $string\n";
# print "NFD:    ", NFD($string),  ",  NFC: ", NFC($string), "\n";
# print "KNFD:   ", NFKD($string), ", KNFC: ", NFKC($string), "\n";

# $string = v99.807.780;
# # LATIN SMALL LETTER C
# # COMBINING CARON
# # COMBINING CEDILLA
# print "String: $string\n";
# print "NFD:    ", NFD($string),  ",  NFC: ", NFC($string), "\n";
# print "KNFD:   ", NFKD($string), ", KNFC: ", NFKC($string), "\n";

# $string = "\x{FB00}";
# # LATIN SMALL LETTER C
# # COMBINING CEDILLA
# print "String: $string\n";
# print "NFD:    ", NFD($string),  ",  NFC: ", NFC($string), "\n";
# print "KNFD:   ", NFKD($string), ", KNFC: ", NFKC($string), "\n";

# $ff    = "\x{FB00}";     # ff ligature
# $chars = length($ff);    # length is one character
# {
#   use bytes;                # force byte semantics
#   $octets = length($ff);    # length is two octets
# }
# $chars = length;

# use Encode qw(encode_utf8);
# $ff     = "\x{FB00}";          # ff ligature
# $ff_oct = encode_utf8($ff);    # convert to octets

# our ( $rows, $cols );
# no strict 'refs';    # for ${$1}/g below
# my $text;
# ( $rows, $cols ) = ( 24, 80 );
# $text = q(I am $rows high and $cols long);    # like single quotes!
# $text =~ s/\$(\w+)/${$1}/g;
# print $text;

# titlecase each word's first character, lowercase the rest
# $text = "thIS is a loNG liNE";
# $text =~ s/(\w+)/\u\L$1/g;
# print $text;

# randcap: filter to randomly capitalize 20% of the letters
# call to srand( ) is unnecessary as of v5.4
# BEGIN { srand(time( ) ^ ($$ + ($$<<15))) }
# sub randcase { rand(100) < 20 ? "\u\l$_[0]" : "\U$_[0]" }
# s/(\w+)/randcase($1)/ge;

# INIT {
#   our %nocap;
#   for (
#     qw(
#     a an the
#     and but or
#     as at but by for from in into of off on onto per to with
#     )
#     )
#   {
#     $nocap{$_}++;
#   }
# }

# sub tc {
#   local $_ = shift;

#   # put into lowercase if on stop list, else titlecase
#   s/(\pL[\pL']*)/$nocap{$1} ? lc($1) : ucfirst(lc($1))/ge;
#   s/^(\pL[\pL']*) /\u\L$1/x;    # first word guaranteed to cap
#   s/ (\pL[\pL']*)$/\u\L$1/x;    # last word guaranteed to cap

#   # treat parenthesized portion as a complete title
#   s/\( (\pL[\pL']*) /(\u\L$1/x;
#   s/(\pL[\pL']*) \) /\u\L$1)/x;

#   # capitalize first word following colon or semi-colon
#   s/ ( [:;] \s+ ) (\pL[\pL']* ) /$1\u\L$2/x;
#   return $_;
# }

# # with apologies (or kudos) to Stephen Brust, PJF,
# # and to JRRT, as always.
# @data = (
#   "the enchantress of \x{01F3}ur mountain",
#   "meeting the enchantress of \x{01F3}ur mountain",
#   "the lord of the rings: the fellowship of the ring",
# );
# $mask = "%-20s: %s\n";

# sub tc_lame {
#   local $_ = shift;
#   s/(\w+\S*\w*)/\u\L$1/g;
#   return $_;
# }
# for $datum (@data) {
#   printf $mask, "ALL CAPITALS",     uc($datum);
#   printf $mask, "no capitals",      lc($datum);
#   printf $mask, "simple titlecase", tc_lame($datum);
#   printf $mask, "better titlecase", tc($datum);
#   print "\n";
# }

# sub dequote {
#   local $_ = shift;
#   my ( $white, $leader );    # common whitespace and common leading string
#   if (/^\s*(?:([^\w\s]+)(\s*).*\n)(?:\s*\1\2?.*\n)+$/) {
#     ( $white, $leader ) = ( $2, quotemeta($1) );
#   }
#   else {
#     ( $white, $leader ) = ( /^(\s+)/, '' );
#   }
#   s/^\s*?$leader(?:$white)?//gm;
#   return $_;
# }

# ( $definition = << 'FINIS') =~ s/^\s+//gm;
#     The five varieties of camelids
#     are the familiar camel, his friends
#     the llama and the alpaca, and the
#     rather less well-known guanaco
#     and vicuña.
# FINIS
# print "$definition\n";

# print dequote $definition;

# $poem = dequote <<EVER_ON_AND_ON;
#     Now far ahead the Road has gone,
#       And I must follow, if I can,
#     Pursuing it with eager feet,
#       Until it joins some larger way
#     Where many paths and errands meet.
#       And whither then? I cannot say.
#           --Bilbo in /usr/src/perl/pp_ctl.c
# EVER_ON_AND_ON

# print "Here's your poem:\n\n$poem\n";

# wrapdemo - show how Text::Wrap works

# use Text::Wrap qw($columns &wrap);
# $columns = 20;
# print "0123456789" x 2,         "\n";
# print wrap( "    ", "  ", @input ), "\n";

# use Text::Wrap;
# undef $/;
# print wrap('', '', split(/\s*\n\s*/, <>));

# use Text::Wrap    qw(&wrap $columns);
# use Term::ReadKey qw(GetTerminalSize);
# ($columns) = GetTerminalSize();
# ( $/, $\ ) = ( '', "\n\n" );    # read by paragraph, output 2 newlines
# while (<>) {                    # grab a full paragraph
#   s/\s*\n\s*/ /g;               # convert intervening newlines to spaces
#   print wrap( '', '', $_ );     # and format
# }

# use Text::Autoformat;
# local $/ = '';
# while (<>) {
#   print autoformat( $_, { squeeze => 0, all => 1 } ), "\n";
# }

# $string = q(Mom said, "Don't do that.");
# $string =~ s/(['"])/\\$1/g;
# $string =~ s/(['"])/$1$1/g;
# print $string;

# $string = "this \Qis a test!\E";
# $string = "this is\\ a\\ test\\!";
# $string = "this " . quotemeta("is a test!");
# print $string;

# use Text::ParseWords;

# sub parse_csv0 {
#   return quotewords( "," => 0, $_[0] );
# }

# use Text::CSV;

# sub parse_csv1 {
#   my $line = shift;
#   my $csv  = Text::CSV->new();
#   return $csv->parse($line) && $csv->fields();
# }

# $line =
# q(XYZZY,"","O'Reilly, Inc","Wall, Larry","a \"glug\" bit,",5,"Error, Core Dumped");
# @fields = parse_csv0($line);
# for ( $i = 0 ; $i < @fields ; $i++ ) {
#   print "$i : $fields[$i]\n";
# }

# $line   = q(Ten Thousand,10000, 2710 ,,"10,000","It's ""10 Grand"", baby",10K);
# @fields = parse_csv1($line);
# for ( $i = 0 ; $i < @fields ; $i++ ) {
#   print "$i : $fields[$i]\n";
# }

# use Tie::CSV_File;
# tie @data, "Tie::CSV_File", "data.csv";

# for ( $i = 0 ; $i < @data ; $i++ ) {
#   printf "Row %d (Line %d) is %s\n", $i, $i + 1, "@{$data[$i]}";
#   for ( $j = 0 ; $j < @{ $data[$i] } ; $j++ ) {
#     print "Column $j is <$data[$i][$j]>\n";
#   }
# }

# use constant AVOGADRO => 6.02252e23;
# printf "You need %g of those for guac\n", AVOGADRO;

# use Text::Soundex;
# use User::pwent;
# chomp( $user = <STDIN> );
# exit unless defined $user;
# $name_code = soundex($user);
# while ( $uent = getpwent() ) {
#   ( $firstname, $lastname ) = $uent->gecos =~ /(\w+)[^,]*\b(\w+)/;
#   if ( $name_code eq soundex( $uent->name )
#     || $name_code eq soundex($lastname)
#     || $name_code eq soundex($firstname) )
#   {
#     printf "%s: %s %s\n", $uent->name, $firstname, $lastname;
#   }
# }

