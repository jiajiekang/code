use v5.10;
use Data::Dump qw(dump);
use open qw(:utf8 :std);
use utf8;

# @lines = ( << "END_OF_HERE_DOC" =~ /^\s*(.+)/gm );
#   I sit beside the fire and think
#   of all that I have seen,
#   of meadow-flowers and butterflies
#   and summers that have been;
# END_OF_HERE_DOC
# print @lines;

# # commify_series - show proper comma insertion in list output
# # @lists is an array of (references to anonymous) arrays
# @lists = (
#   ['just one thing'],
#   [qw(Mutt Jeff)],
#   [qw(Peter Paul Mary)],
#   [ 'To our parents', 'Mother Theresa', 'God' ],
#   [ 'pastrami',       'ham and cheese', 'peanut butter and jelly', 'tuna' ],
#   [ 'recycle tired, old phrases', 'ponder big, happy thoughts' ],
#   [
#     'recycle tired, old phrases',
#     'ponder big, happy thoughts',
#     'sleep and dream peacefully'
#   ],
# );
# foreach $aref (@lists) {
#   print "The list is: " . commify_series(@$aref) . ".\n";
# }
#
# # demo for single list
# @list = qw(one two three);
# print "The last list is: " . commify_series(@list) . ".\n";
#
# sub commify_series {
#   my $sepchar = grep( /,/ => @_ ) ? ";" : ",";
#       ( @_ == 0 ) ? ''
#     : ( @_ == 1 ) ? $_[0]
#     : ( @_ == 2 ) ? join( " and ", @_ )
#     :               join( "$sepchar ", @_[ 0 .. ( $#_ - 1 ) ], "and $_[-1]" );
# }

