use Data::Dump qw(dump);

$sepline = join '', "\n", "-" x 6, "\n";

$record = {
    NAME => "Jason",
    EMPNO => 132,
    TITLE => "deputy peon",
    AGE => 23,
    SALARY => 37_000,
    PALS => [ "Norbert", "Rhys", "Phineas"],
};
printf "I am %s, and my pals are %s.\n",
$record->{NAME}, join(", ", @{$record->{PALS}});

$byname{ $record->{NAME} } = $record;

if ($rp = $byname{"Aron"}) {
    printf "Aron is emplyee %d.\n", $rp->{EMPNO};
}

push @{ $byname{"Jason"}->{PALS} }, "Theodore";
printf "Jason now has %d pals\n", scalar @{$byname{"Jason"}->{PALS}};

{ local $record;
    while (($name, $record) = each %byname) {
        printf "%s is employee number %d\n", $name, $record->{EMPNO};
    }
}

printf "%s\n", dump \%byname;
print $sepline;

$employees[ $record->{EMPNO} ] = $record;

if ($rp = $employees[132]) {
    printf "employee number 132 is %s\n", $rp->{NAME};
}
