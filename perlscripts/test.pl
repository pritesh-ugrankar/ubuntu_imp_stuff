use strict;
use warnings;
use Try::Tiny;

sub reciprocal {
	my $num = shift @_;
	my $reciprocaled = 0;
	try {
		$reciprocaled = 1 / $num;
		print "Reciprocal of $num is $reciprocaled\n";
	}

	catch {
		my $error = $_;
		warn "Cannot calculate reciprocal of $reciprocaled. $error\n";
	};
}

my @numbers = (-5..5);

foreach my $number (@numbers) {
    reciprocal($number);
}




