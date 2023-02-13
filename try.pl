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

