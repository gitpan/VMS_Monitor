use VMS::Monitor;
$foo = VMS::Monitor::one_monitor_piece("MODES");
print "$!, $^E\n" unless defined $foo;
print "$foo\n" if defined $foo;

foreach $bar (@$foo) {
  foreach (keys %$bar) {
    print $_, " ", $bar->{$_}, " ";
  }
  print "\n";
}
