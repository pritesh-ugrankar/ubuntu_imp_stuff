use strict;
use warnings;
use Try::Tiny;

sub reciprocal {
	my $num = shift @_;
	try {
		print "Calculating reciprocal of $num\n";
		my $reciprocaled =  1 / $num;
		return print "Reciprocal of $num: $reciprocaled\n";
	}

	catch {
		my $error = $_;

		print "Error: $error\n";
		
	};


	
}

my @arr = (-2..2);

foreach my $ele (@arr) {
	my $value = reciprocal($ele);

}
