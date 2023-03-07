use v5.10;
use Data::Dump qw(dump);
use open qw(:utf8 :std);
use utf8;

# $_     = 'One fish two fish red fish blue fish';
# $WANT  = 3;
# $count = 0;
# while (/(\w+)\s+fish\b/gi) {
#   if ( ++$count == $WANT ) {
#     print "The third fish is a $1 one.\n";
#
#     # Warning: don't `last' out of this loop
#   }
# }
#
# $pond = 'One fish two fish red fish blue fish';
#
# # using a temporary
# @colors = ( $pond =~ /(\w+)\s+fish\b/gi );    # get all matches
# $color  = $colors[2];                         # then the one we want
#
# # or without a temporary array
# $color = ( $pond =~ /(\w+)\s+fish\b/gi )[2];    # just grab element 3
# print "The third fish in the pond is $color.\n";
#
# $count = 0;
# $_     = 'One fish two fish red fish blue fish';
# @evens = grep { $count++ % 2 == 0 } /(\w+)\s+fish\b/gi;
# print "Even numbered fish are @evens.\n";
#
# $count = 0;
# s{
# \b # makes next \w more efficient
# ( \w+ ) # this is what we'll be changing
# (
# \s+ fish \b
# )
# }{
# if (++$count == 4) {
# "sushi" . $2;
# } else {
# $1 . $2;
# }
# }gex;
# print $_, "\n";
#
# $pond  = 'One fish two fish red fish blue fish swim here.';
# $color = ( $pond =~ /\b(\w+)\s+fish\b/gi )[-1];
# print "Last fish is $color.\n";
#
# $pond = 'One fish two fish red fish blue fish swim here.';
# if (
#   $pond =~ m{
# \b ( \w+) \s+ fish \b
# (?! .* \b fish \b )
# }six
#   )
# {
#   print "Last fish is $1.\n";
# }
# else {
#   print "Failed!\n";
# }

# use locale;
# use POSIX 'locale_h';
# $name = "andreas k\xF6nig";
# @locale{qw(German English)} = qw(zh_CN.UTF-8 en_US.UTF-8);
# setlocale( LC_CTYPE, $locale{English} )
#   or die "Invalid locale $locale{English}";
# @english_names = ();
# while ( $name =~ /\b(\w+)\b/g ) {
#   push( @english_names, ucfirst($1) );
# }
# setlocale( LC_CTYPE, $locale{German} )
#   or die "Invalid locale $locale{German}";
# @german_names = ();
# while ( $name =~ /\b(\w+)\b/g ) {
#   push( @german_names, ucfirst($1) );
# }
# print "English names: @english_names\n";
# print "German names: @german_names\n";

# use String::Approx qw(amatch);
#
# open( DICT, "/usr/share/dict/words" ) or die "Can't open dict: $!";
#
# while (<DICT>) {
#   print if amatch("balast");
# }

# $n = "   49 here";
# $n =~ s/\G /0/g;
# print $n;
#
# $_ = "The year 1752 lost 10 days on the 3rd of September";
# while (/(\d+)/gc) {
#   print "Found number $1\n";
# }
#
# # the /c above left pos at end of final match
# if (/\G(\S+)/g) {
#   print "Found $1 right after the last number.\n";
# }
#
# $a = "Didst thou think that the eyes of the White Tower were blind?";
# $a =~ /(\w{5,})/g;
# print "Got $1, position in \$a is ", pos($a), "\n";
# pos($a) = 30;
# $a =~ /(\w{5,})/g;
# print "Got $1, position in \$a now ", pos($a), "\n";
#
# $_ = "Nay, I have seen more than thou knowest, Grey Fool.";
# /(\w{5,})/g;
# print "Got $1, position in \$_ is ", pos, "\n";
# pos = 42;
# /\b(\w+)/g;
# print "Next full word after position 42 is $1\n";

