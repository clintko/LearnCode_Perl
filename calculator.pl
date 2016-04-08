use strict;
use warnings;

# Goal:
#      Create a calculator program that adds two number from the user
#      and display the answer
my $num1;
my $num2;
my $choice;

&menu;

sub menu {
    print "###### Options ######\n",
    "1. Add\n",
    "2. Substract\n",
    "3. Multiply\n",
    "4. Divide\n",
    "5. Exit\n";
    
    print "What is your choice: ";
    $choice = readline STDIN;
    
    if ($choice == 1) {
	&add;
    } elsif ($choice == 2) {
	&subt;
    } elsif ($choice == 3) {
	&mult;
    } elsif ($choice == 4) {
	&div;
    } elsif ($choice == 5) {
        print "Goodbye, come again soon\n";
        exit; 
    } # end if-else
} # end block menu

sub add {
    print "What is the first number?\n";
    $num1 = readline STDIN;
    chomp ($num1);
    
    print "What is the second number?\n";
    $num2 = readline STDIN;
    chomp ($num2);
    
    print "The result is: ", $num1 + $num2, "\n";
    &menu;
} # end block add

sub subt {
    print "What is the first number?\n";
    $num1 = readline STDIN;
    chomp ($num1);
    
    print "What is the second number?\n";
    $num2 = readline STDIN;
    chomp ($num2);
    
    print "The result is: ", $num1 - $num2, "\n";
    &menu;
} # end block subt

sub mult {
    print "What is the first number?\n";
    $num1 = readline STDIN;
    chomp ($num1);
    
    print "What is the second number?\n";
    $num2 = readline STDIN;
    chomp ($num2);
    
    print "The result is: ", $num1 * $num2, "\n";
    &menu;
} # end block mult

sub div {
    print "What is the first number?\n";
    $num1 = readline STDIN;
    chomp ($num1);
    
    print "What is the second number?\n";
    $num2 = readline STDIN;
    chomp ($num2);
    
    print "The result is: ", $num1 / $num2, "\n";
    &menu;
} # end block div



