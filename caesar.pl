#!/usr/bin/perl

# Caesar cipher

if (@ARGV && $ARGV[0] && $ARGV[1]) {
    foreach (split(//, uc($ARGV[1]))) {
        if (ord($_) <= 90 && ord($_) >= 65) {
            print chr(65 + (ord($_) - 65 + $ARGV[0]) % 26);
        } else {
            print $_;
        }
    }
    print "\n";
} else {
    print "Usage:\n";
    print "perl caesar.pl <shift> <message>\n";
}
