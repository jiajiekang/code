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
print "\xC4 and \x{0394} look different\n";

