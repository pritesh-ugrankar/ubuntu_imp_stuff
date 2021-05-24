use strict;
use warnings;
use Data::Dumper;


my @nums = (10, 11, 12, 10, 15, 11, 91, 10);

my %unordered;
my %seen;
my @ordered;
@unordered{@nums} = undef;

foreach my $stuff (keys %unordered) {
	print "$stuff\n";
}


foreach my $num (@nums) {
	if ( not  $seen{$num}++) {
		push @ordered, $num;
	}
}

print "@ordered\n";

print Dumper( \%seen);
