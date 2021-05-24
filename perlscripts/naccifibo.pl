use strict;
use warnings;

sub make_fibonacci {
  my ( $current, $next ) = (0, 1);

  return sub {
    my $fibonacci = $current;
    ($current, $next) = ($next, $current+$next);
    return $fibonacci;
  };


}

my $iterator = make_fibonacci();

for (1..10) {
  my $num = $iterator->();
  print "$num\n";
}
