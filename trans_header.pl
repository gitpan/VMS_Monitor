while (<>) {
  next unless /#define spi\$_/;
  next if /spi\$_RESERVED/;
  next if /spi\$_LAST/;
  ($name, $val) = /\$_(\w+).?(\d+)/;
  print "    MONDEF\{$name, $val, IS_LONG, IS_SINGLE\}\n";
}
