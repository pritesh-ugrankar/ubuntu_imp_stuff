use strict;
use warnings;
print "Just below use statements\n";
sub make_fibonacci {
  print "Just above the first line in make_fibonacci function\n";
  my ( $current, $next) = ( 0, 1); 
  print "my ( \$current($current), \$next($next)) = ( 0, 1). \n" ;
  return sub {
    my $fibonacci = $current;
    print "my \$fibonacci ($fibonacci) = \$current ($current)\n";
    ( $current, $next ) = ( $next, $current+$next );
    print "( \$current ($current), \$next ) = ( $next, $current+$next )\n";

    return $fibonacci;
  };
}

my $iterator = make_fibonacci();

#for (1..10) {
#  my $fibonacci = $iterator->();
#  print "$fibonacci ";
#}
#print "\n";
for (1..10) {
  my $fibonacci = $iterator->();
  print "$fibonacci ";
}
print "\n";
