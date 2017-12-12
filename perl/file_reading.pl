#!/usr/bin/perl -w
#
# Three different ways of
# reading files in Perl.
# by diox
#
use strict;

if(@ARGV < 1) {
    print "Usage: $0 <filename>\n";
    exit 1;
}

my $chunk_size  = 1024;
my $offset      = 0;
my $buffer      = "";
my $chunk       = "";

open(my $fh, "<", "$ARGV[0]") || die("$ARGV[0]: $!");

# Chunks (fast, may save memory, but not as used below)
while(my $bytes_read = read($fh, $chunk, $chunk_size, $offset)) {
    $buffer .= $chunk;
    $offset += $bytes_read;
}

# Line by line (simple)
while(<$fh>) {
    $buffer .= $_;
}

# Character by character (slow)
while(my $c = getc($fh)) {
    $buffer .= $c;
}

close($fh);

exit 0;
