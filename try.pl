use v5.10;
use Data::Dump qw(dump);
use open qw(:utf8 :std);
use utf8;

# # using arrays
# print "Today is day ", (localtime)[7], " of the current year.\n";
#
# # using Time::tm objects
# use Time::localtime;
# $tm = localtime;
# print "Today is day ", $tm->yday, " of the current year.\n";

# ( $day, $month, $year ) = (localtime)[ 3, 4, 5 ];
# printf "The current date is %04d %02d %02d\n", $year + 1900, $month + 1, $day;
# print "\n@{[localtime]}\n";
#
# use Time::localtime;
# $tm = localtime;
# printf(
#   "The current date is %04d-%02d-%02d\n",
#   $tm->year + 1900,
#   ( $tm->mon ) + 1,
#   $tm->mday
# );

# printf(
#   "The current date is %04d-%02d-%02d\n",
#   sub { ( $_[5] + 1900, $_[4] + 1, $_[3] ) }
#     ->(localtime)
# );

# use POSIX qw(strftime);
# print strftime "%Y-%m-%d %H:%M:%S\n", localtime;
# print strftime "%Y-%m-%d %H:%M:%S\n", gmtime;

# (
#   $seconds, $minutes, $hours, $day_of_month, $month,
#   $year,    $wday,    $yday,  $isdst
# ) = localtime();
# printf(
#   "Dateline: %02d:%02d:%02d-%04d/%02d/%02d\n",
#   $hours,     $minutes, $seconds, $year + 1900,
#   $month + 1, $day_of_month
# );
#
# use Time::localtime;
# $tm = localtime();
# printf(
#   "Dateline: %02d:%02d:%02d-%04d/%02d/%02d\n",
#   $tm->hour, $tm->min, $tm->sec,
#   $tm->year + 1900,
#   $tm->mon + 1,
#   $tm->mday
# );

# $birthtime = 96176750;    # 18/Jan/1973, 3:45:50 am
# $interval  = 5 +          # 5 seconds
#   17 * 60 +               # 17 minutes
#   2 * 60 * 60 +           # 2 hours
#   55 * 60 * 60 * 24;      # and 55 days
# $then = $birthtime + $interval;
# print "Then is ", scalar( localtime($then) ), "\n";
#
# use Date::Calc qw(Add_Delta_DHMS);
# ( $year, $month, $day, $hh, $mm, $ss ) = Add_Delta_DHMS(
#   1973, 1, 18, 3, 45, 50,    # 18/Jan/1973, 3:45:50 am
#   55,   2, 17, 5
# );                           # 55 days, 2 hrs, 17 min, 5 sec
# print "To be precise: $hh:$mm:$ss, $month/$day/$year\n";
#
# use Date::Calc qw(Add_Delta_Days);
# ( $year, $month, $day ) = Add_Delta_Days( 1973, 1, 18, 55 );
# print "Nat was 55 days old on: $month/$day/$year\n";

# use Date::Calc qw(Delta_Days);
# @bree       = ( 1981, 6, 16 );    # 16 Jun 1981
# @nat        = ( 1973, 1, 18 );    # 18 Jan 1973
# $difference = Delta_Days( @nat, @bree );
# print "There were $difference days between Nat and Bree\n";
#
# use Date::Calc qw(Delta_DHMS);
# @bree = ( 1981, 6, 16, 4, 35, 25 );    # 16 Jun 1981, 4:35:25
# @nat  = ( 1973, 1, 18, 3, 45, 50 );    # 18 Jan 1973, 3:45:50
# @diff = Delta_DHMS( @nat, @bree );
# print "Bree came $diff[0] days, $diff[1]:$diff[2]:$diff[3] after Nat\n";

# use Date::Calc qw(Day_of_Week Week_Number Day_of_Week_to_Text);
# $year  = 1981;
# $month = 6;                                    # (June)
# $day   = 16;
# $wday  = Day_of_Week( $year, $month, $day );
# print "$month/$day/$year was a ", Day_of_Week_to_Text($wday), "\n";
# ## see comment above
# $wnum = Week_Number( $year, $month, $day );
# print "in the $wnum week.\n";

# use Date::Manip qw(ParseDate UnixDate);
# while (<DATA>) {
#   $date = ParseDate($_);
#   if ( !$date ) {
#     warn "Bad date string: $_\n";
#     next;
#   }
#   else {
#     ( $year, $month, $day ) = UnixDate( $date, "%Y", "%m", "%d" );
#     print "Date was $month/$day/$year\n";
#   }
# }
# __DATA__
# Today
# 2 weeks ago Friday

# use Time::Local;
# $time = timelocal( 50, 45, 3, 18, 0, 73 );
# print "Scalar localtime gives: ", scalar( localtime($time) ), "\n";
#
# use POSIX qw(strftime);
# use Time::Local;
# $time = timelocal( 50, 45, 3, 18, 0, 73 );
# print "strftime gives: ", strftime( "%A %D", localtime($time) ), "\n";
#
# use Date::Manip qw(ParseDate UnixDate);
# $date    = ParseDate("18 Jan 1973, 3:45:50");
# $datestr = UnixDate( $date, "%a %b %e %H:%M:%S %z %Y" );    # as scalar
# print "Date::Manip gives: $datestr\n";

