#!/usr/bin/perl
use strict;
use warnings;

sub calculate {
    my ($num1, $num2, $operator) = @_;

    if ($operator eq '+') {
        return $num1 + $num2;
    } elsif ($operator eq '-') {
        return $num1 - $num2;
    } elsif ($operator eq '*') {
        return $num1 * $num2;
    } elsif ($operator eq '/') {
        if ($num2 == 0) {
            return "Error: Division by zero";
        }
        return $num1 / $num2;
    } else {
        return "Invalid operator";
    }
}

while (1) {
    print "\nSimple Calculator\n";
    print "1. Calculate\n";
    print "2. Exit\n";
    print "Choose an option: ";
    my $choice = <STDIN>;
    chomp($choice);

    if ($choice == 1) {
        print "Enter first number: ";
        my $num1 = <STDIN>;
        chomp($num1);

        print "Enter an operator (+, -, *, /): ";
        my $operator = <STDIN>;
        chomp($operator);

        print "Enter second number: ";
        my $num2 = <STDIN>;
        chomp($num2);

        my $result = calculate($num1, $num2, $operator);
        print "Result: $result\n";
    } elsif ($choice == 2) {
        print "Exiting...\n";
        last;
    } else {
        print "Invalid choice, please try again.\n";
    }
}
