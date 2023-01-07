use Data::Dump qw(dump);
$record = {
    NAME => "Jason",
    EMPNO => 132,
    TITLE => "deputy peon",
    AGE => 23,
    SALARY => 37_000,
    PALS => [ "Norbert", "Rhys", "Phineas"],
};
printf "I am %s, and my pals are %s.\n",
$record->{NAME},
join(", ", @{$record->{PALS}});

$byname{ $record->{NAME} } = $record;

if ($rp = $byname{"Aron"}) {
    printf "Aron is emplyee %d.\n", $rp->{EMPNO};
}

push @{ $byname{"Jason"}->{PALS} }, "Theodore";
printf "Jason now has %d pals\n", scalar @{$byname{"Jason"}->{PALS}};

print dump $record;

while (($name, $record) = each %byname) {
    printf "%s is employee number %d\n", $name, $record->{EMPNO};
}

print "\n---\n";
print dump \%byname;;

