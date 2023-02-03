use v5.10;
use Data::Dump qw(dump);
use open qw(:utf8 :std);
use utf8;

# $char = chr(0x394);
# $code = ord($char);
# printf "char %s is code %d, %#04x\n", $char, $code, $code;
# use bytes;
# printf "byte length: %d\n", bytes::length $char;

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
# print "$unistr\n@unichars\n";

# $hal  = "HAL";
# @byte = unpack( "C*", $hal );
# foreach $val (@byte) {
#   $val += 1;  # add one to each byte value
# }
# $ibm = pack( "C*", @byte );
# print "$ibm\n";    # prints "IBM"

# @unicode_points = unpack( "U*", "fac\x{0327}ade" );
# print "@unicode_points\n";
# $word = pack( "U*", @unicode_points );
# print "$word\n";

# printf "%#vd\n", "fac\x{0327}ade";
# printf "%#vx\n", "fac\x{0327}";

# print "\N{GREEK CAPITAL LETTER DELTA} is called delta.\n";ade";
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

# %seen   = ();
# $string = "an apple a day";
# foreach $char ( split //, $string ) {
#   $seen{$char}++;
# }
# print "unique chars are: ", sort( keys %seen ), "\n";

# $string = "an apple a day";
# $sum    = 0;
# foreach $byteval ( unpack( "C*", $string ) ) {
#   $sum += $byteval;
# }
# $sum = unpack("%32C*", $string);
# print "sum is $sum\n";

# sum - compute 16-bit checksum of all input files
# $checksum = 0;
# local @ARGV = qw/test.txt/;
# while (<>) { $checksum += unpack( "%16C*", $_ ) }
# $checksum %= ( 2**16 ) - 1;
# print "$checksum\n";

# slowcat - emulate a s l o w line printer
# usage: slowcat [-DELAY] [files ...]
# $DELAY = ( $ARGV[0] =~ /^-([.\d]+)/ ) ? ( shift, $1 ) : 1;
# $|     = 1;
# while (<>) {
#   for ( split(//) ) {
#     print;
#     select( undef, undef, undef, 0.005 * $DELAY );
#   }
# }

# reverse word order
# $string   = 'Yoda said, "can you see this?"';
# @allwords = split( " ", $string );
# $revwords = join( " ", reverse @allwords );
# $revwords = join("", reverse split(/(\s+)/, $string));
# print $revwords, "\n";

# $string = "fac\x{0327}ade"; # "façade"
# $string =~ /fa.ade/; # fails
# $string =~ /fa\Xade/; # succeeds
# @chars = split(//, $string); # 7 letters in @chars
# @chars = $string =~ /(.)/g; # same thing
# print scalar @chars;
# @chars = $string =~ /(\X)/g; # 6 "letters" in @chars
# print "\n";
# print scalar @chars;

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

# use Unicode::Normalize;
# $ff = "\x{FB00}";    # ff ligature
# print NFKC($ff), "\n";

# $char = chr(0x394);
# $char = '好';
# use Encode qw(encode);

# # use bytes;
# $ff_oct = encode( 'UTF-8', $char );    # convert to octets
# print length($ff_oct), "\n";
# @byte_str = unpack( 'C*', $ff_oct );
# print qq/@{[map { sprintf "%#x", $_ } @byte_str]}/;

# while (<>) {
#   1 while s/\t+/' ' x (length($&) * 8 - length($`) % 8)/e;
#   print;
# }

# 1 while s/^(.*?)(\t+)/$1 . ' ' x (length($2) * 4 - length($1) % 4)/e;
# 1 while s/\t+/' ' x (($+[0] - $-[0]) * 4 - $-[0] % 4)/e;

# $_ = 'Hello world!';
# /(ll).+(wor)ld/;
# print "@+";

# use Text::Tabs;
# @expanded_lines  = expand(@lines_with_tabs);
# @tabulated_lines = unexpand(@lines_without_tabs);
# $tabstop = 4;
# while (<>) { print expand($_) }
# while (<>) { print unexpand($_) }

# our ( $rows, $cols );
# no strict 'refs';    # for ${$1}/g below
# my $text;
# ( $rows, $cols ) = ( 24, 80 );
# $text = q(I am $rows high and $cols long);    # like single quotes!
# $text =~ s/\$(\w+)/${$1}/g;
# print $text;
# $text = "I am 17 years old";
# $text =~ s/(\d+)/2 * $1/eg;
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
#
# sub tc {
#   local $_ = shift;
#
#   # put into lowercase if on stop list, else titlecase
#   s/(\pl[\pl']*)/$nocap{$1} ? lc($1) : ucfirst(lc($1))/ge;
#   s/^(\pl[\pl']*) /\u\l$1/x;    # first word guaranteed to cap
#   s/ (\pl[\pl']*)$/\u\l$1/x;    # last word guaranteed to cap
#
#   # treat parenthesized portion as a complete title
#   s/\( (\pl[\pl']*) /(\u\l$1/x;
#   s/(\pl[\pl']*) \) /\u\l$1)/x;
#
#   # capitalize first word following colon or semi-colon
#   s/ ( [:;] \s+ ) (\pl[\pl']* ) /$1\u\l$2/x;
#   return $_;
# }
#
# # with apologies (or kudos) to stephen brust, pjf,
# # and to jrrt, as always.
# @data = (
#   "the enchantress of \x{01f3}ur mountain",
#   "meeting the enchantress of \x{01f3}ur mountain",
#   "the lord of the rings: the fellowship of the ring",
# );
# $mask = "%-20s: %s\n";
#
# sub tc_lame {
#   local $_ = shift;
#   s/(\w+\s*)/\u\l$1/g;
#   return $_;
# }
#
# for $datum (@data) {
#   printf $mask, "all capitals",     uc($datum);
#   printf $mask, "no capitals",      lc($datum);
#   printf $mask, "simple titlecase", tc_lame($datum);
#   printf $mask, "better titlecase", tc($datum);
#   print "\n";
# }

# use Interpolation E => 'eval';
# print "You bounced check number $E{500 + int rand(100)}\n";
#
# sub func { return shift() * 2; }
#
# use Interpolation money => \&func;
# print "Money is $money{10}";

# ( $definition = << 'FINIS') =~ s/^[^\S\n]+//gm;
#     The five varieties of camelids
#     are the familiar camel, his friends
#
#     the llama and the alpaca, and the
#     rather less well-known guanaco
#     and vicuña.
# FINIS
# print "$definition\n";

# sub fix {
#   my $string = shift;
#   $string =~ s/^\s+//gm;
#   return $string;
# }
# print fix( << "END");
# My stuff goes here
# END
#
# # With function predeclaration, you can omit the parens:
# print fix << "END";
# My stuff goes here
# END

# ( $quote = << '    FINIS') =~ s/^\s+//gm;
#     ...we will have peace, when you and all your works have
#     perished--and the works of your dark master to whom you would
#     deliver us. You are a liar, Saruman, and a corrupter of men's
#     hearts. --Theoden in /usr/src/perl/taint.c
#     FINIS
# $quote =~ s/\s+--/\n--/;    #move attribution to line of its own
# print "$quote\n";

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
#
# ( $definition = << 'finis') =~ s/^\s+//gm;
#     @@@ int
#     @@@ runops( ) {
#     @@@ SAVEI32(runlevel);
#     @@@ runlevel++;
#     @@@ while ( op = (*op->op_ppaddr)( ) ) ;
#     @@@ TAINT_NOT;
#     @@@ return 0;
#     @@@ }
# finis
# print dequote $definition;
#
# $poem = dequote <<ever_on_and_on;
#     now far ahead the road has gone,
#       and i must follow, if i can,
#     pursuing it with eager feet,
#       until it joins some larger way
#     where many paths and errands meet.
#       and whither then? i cannot say.
#           # --bilbo in /usr/src/perl/pp_ctl.c
# ever_on_and_on
# print "here's your poem:\n\n$poem\n";

# # wrapdemo - show how Text::Wrap works
# @input = (
#   "Folding and splicing is the work of an editor,",
#   "not a mere collection of silicon",
#   "and", "mobile electrons!"
# );
# use Text::Wrap qw($columns &wrap);
# $columns = 20;
# print "0123456789" x 2,         "\n";
# print wrap( "    ", "  ", @input ), "\n";

# # merge multiple lines into one, then wrap one long line
# use Text::Wrap;
# undef $/;
# print wrap( '', '', split( /\s*\n\s*/, <> ) );

# use Text::Wrap    qw(&wrap $columns);
# use Term::ReadKey qw(GetTerminalSize);
# ($columns) = GetTerminalSize();
# ( $/, $\ ) = ( '', "\n\n" );    # read by paragraph, output 2 newlines
# while (<>) {                    # grab a full paragraph
#   s/\s*\n\s*/ /g;               # convert intervening newlines to spaces
#   print wrap( '', '', $_ );     # and format
# }

# use Text::Autoformat;
# $/ = '';
# while (<>) {
#   print autoformat( $_, { squeeze => 0, all => 1 } ), "\n";
# }

# $string = q(mom said, "don't do that.");
# $string =~ s/(['"])/\\$1/g;
# print "$string\n";
# $string = q(Mom said, "Don't do that.");
# $string =~ s/(['"])/$1$1/g;
# print "$string\n";

# $string = "this \Qis a test!\E";
# print "$string\n";
# $string = "this is\\ a\\ test\\!";
# print "$string\n";
# $string = "this " . quotemeta("is a test!");
# print "$string\n";

# # 1. trim leading and trailing white space
# # 2. collapse internal whitespace to single space each
# # 3. take input from $_ if no arguments given
# # 4. join return list into single scalar with intervening spaces
# # if return is scalar context
# sub trim {
#   my @out = @_ ? @_ : $_;
#   $_ = join( ' ', split(' ') ) for @out;
#   return wantarray ? @out : "@out";
# }
# print trim <>;

# use Text::ParseWords;
#
# sub parse_csv0 {
#   return quotewords( "," => 0, $_[0] );
# }
#
# use Text::CSV;
#
# sub parse_csv1 {
#   my $line = shift;
#   my $csv  = Text::CSV->new();
#   return $csv->parse($line) && $csv->fields();
# }
#
# $line =
# q(xyzzy,"","o'reilly, inc","wall, larry","a \"glug\" bit,",5,"error, core dumped");
# @fields = parse_csv0($line);
# for ( $i = 0 ; $i < @fields ; $i++ ) {
#   print "$i : $fields[$i]\n";
# }
#
# $line   = q(ten thousand,10000, 2710 ,,"10,000","it's ""10 grand"", baby",10k);
# @fields = parse_csv1($line);
# for ( $i = 0 ; $i < @fields ; $i++ ) {
#   print "$i : $fields[$i]\n";
# }
#
# print "\n";
#
# use Tie::CSV_File;
# tie @data, "Tie::CSV_File", "data.csv";
#
# for ( $i = 0 ; $i < @data ; $i++ ) {
#   printf "row %d (line %d) is %s\n", $i, $i + 1, "@{$data[$i]}";
#   for ( $j = 0 ; $j < @{ $data[$i] } ; $j++ ) {
#     print "column $j is <$data[$i][$j]>\n";
#   }
# }

# use constant avogadro => 6.02252e23;
# printf "you need %g of those for guac\n", avogadro;
#
# *AVOGADRO = \6.02252e23;
# print "You need $AVOGADRO of those for guac\n";

# package Tie::Constvar;
# use Carp;
#
# sub TIESCALAR {
#   my ( $class, $initval ) = @_;
#   my $var = $initval;
#   return bless \$var => $class;
# }
#
# sub FETCH {
#   my $selfref = shift;
#   return $$selfref;
# }
#
# sub STORE {
#   confess "Meddle not with the constants of the universe";
# }
# tie my $AVOGADRO, Tie::Constvar, 6.02252e23;
# print "You need $AVOGADRO of those for guac\n";
# $AVOGADRO = 6.6256e-34;    # sorry, Max

# use Text::Soundex;
# use User::pwent;
#
# print "Lookup user: ";
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

use Text::Metaphone qw(Metaphone);
use String::Approx  qw(amatch);

if ( amatch( Metaphone("Kris Jenson"), [1], Metaphone("Christiansen") ) ) {
  print Metaphone("Kris Jenson");
  print "Close enough!\n";
}
