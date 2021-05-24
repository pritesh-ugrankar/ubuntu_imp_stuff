use strict;
use warnings;
use Try::Tiny;

sub divide {
	my $div = shift @_;

	try {
	my $output =    2 / $div ;
	print ("Num: $div.  $output\n");
    }
        catch {
		my $error = $_;
		warn "\$div ($div). $error";
	};
}

my @numbers = (-2..2);

foreach my $number (@numbers) {
	divide($number);
}
