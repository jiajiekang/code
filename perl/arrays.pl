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

# sub what_about_that_array {
#   print "The array now has ", scalar(@people), " elements.\n";
#   print "The index of the last element is $#people.\n";
#   print "Element #3 is `$people[3]'.\n";
# }
# @people = qw(Crosby Stills Nash Young);
# what_about_that_array();
# $#people--;
# what_about_that_array();

# $#foo = 5;
# @bar  = ( (undef) x 5 );
# printf "foo element 3 is%s defined\n", defined $foo[3] ? "" : "n't";
# printf "foo element 3 does%s exist\n", exists $foo[3]  ? "" : "n't";
# printf "bar element 3 is%s defined\n", defined $bar[3] ? "" : "n't";
# printf "bar element 3 does%s exist\n", exists $bar[3]  ? "" : "n't";

# foreach $var ( sort keys %ENV ) {
#   print "$var=$ENV{$var}\n";
# }

# @fruits    = ( "Apple", "Blackberry" );
# $fruit_ref = \@fruits;
# foreach $fruit (@$fruit_ref) {
#   print "$fruit tastes good in a pie.\n";
# }
# for ( $i = 0 ; $i <= $#$fruit_ref ; $i++ ) {
#   print "$fruit_ref->[$i] tastes good in a pie.\n";
# }

# # generate a list of users logged in, removing duplicates
# %ucnt = ();
# for (`who`) {
#   s/\s.*\n//;     # kill from first space till end-of-line, yielding username
#   $ucnt{$_}++;    # record the presence of this user
# }
#
# # extract and print unique keys
# @users = sort keys %ucnt;
# print "users logged in: @users\n";

# @a     = ( 1, 3, 5, 6, 7, 8 );
# @b     = ( 2, 3, 5, 7, 9 );
# @union = @isect = @diff = ();
# %union = %isect = ();
# %count = ();
#
# foreach $e ( @a, @b ) { $union{$e}++ && $isect{$e}++ }
# @union = keys %union;
# @isect = keys %isect;
#
# @isect = @diff = @union = ();
# foreach $e ( @a, @b ) { $count{$e}++ }
# @union = keys %count;
# foreach $e ( keys %count ) {
#   push @{ $count{$e} == 2 ? \@isect : \@diff }, $e;
# }
#
# print "union: @union, isect: @isect\n";

# @members   = ( "Time", "Flies" );
# @initiates = ( "An",   "Arrow" );
#
# splice( @members, 2, 0, "Like", @initiates );
# print "@members\n";
# splice( @members, 0, 1, "Fruit" );
# splice( @members, -2, 2, "A", "Banana" );
# print "@members\n";

# use User::pwent qw(getpwent);
# @users = ();
#
# # fetch all users
# while ( defined( $user = getpwent ) ) {
#   push( @users, $user );
# }
# @users = sort { $a->name cmp $b->name } @users;
# foreach $user (@users) {
#   print $user->name, "\n";
# }

# print map { $_->[0] }    # whole line
#   sort {
#   $a->[1] <=> $b->[1]         # gid
#     || $a->[2] <=> $b->[2]    # uid
#     || $a->[3]
#     cmp $b->[3]               # login
#   }
#   map { [ $_, ( split /:/ )[ 3, 2, 0 ] ] } `cat /etc/passwd`;

# sub grab_and_rotate ( \@ ) {
#   my $listref = shift;
#   my $element = $listref->[0];
#   push( @$listref, shift @$listref );
#   return $element;
# }
# @processes = ( 1, 2, 3, 4, 5 );
# while (1) {
#   $process = grab_and_rotate(@processes);
#   print "Handling process $process\n";
#   sleep 1;
# }

