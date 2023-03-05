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

