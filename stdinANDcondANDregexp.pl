# Youtube: Coding 101 22: Perl: Ifs, Thens, and Regular Expressions
# https://www.youtube.com/watch?v=Tcnf6m32LG4&index=2&list=PLTmR6HsT7005r9J50_HCOGkyGc8dDYu7J&nohtml5=False
use strict;
use warnings;

##### standard input #####
print "Please type in your age: ";
my $age = <STDIN>;
chomp($age);
print "Your age is $age\n";

##### if-else #####
print "\n";
print "Please enter first number: ";
my $num1 = <STDIN>;
print "Please enter second number: ";
my $num2 = <STDIN>;

if ($num1 < $num2) {
    print "Number 2 is larger\n";
} elsif ($num1 > $num2){
    print "Number 1 is larger\n";
} else {
    print "Two numbers are equal\n";
} # end if-else

##### more about if-else #####
print "\n";
print "Pick a number ";
my $number = <STDIN>;
if ($number % 2) {
    print "You entered an odd number.\n";
} else {
    print "You entered an even number.\n";
} # end if-else

print "What is your favorite animal?\n";
my $animal = <STDIN>;

##### regular expression #####
print "\n";
# eq compares two string ; || is OR
if (($animal eq "bunny\n") || ($animal eq "rabbit\n")) {     
    print "You said $animal";
    print "Yes bunnies are the best!\n";
} else {
    print "You said $animal";
    print "Okay, whatever.\n";
} # end if-else

# =~ is for regular expression
## g: global
## i: case insensitive
print "\n";
if (($animal =~ /bunny/gi) || ($animal =~ /rabbit/gi)) {     
    print "You said $animal";
    print "Yes bunnies are the best!\n";
} else {
    print "You said $animal";
    print "Okay, whatever.\n";
} # end if-else

print "\n";
print "Please enter your favorite number: ";
my $number = <STDIN>;

## \D not a digit
## + 比對前一個字元一次或更多次，等效於 {1,}
## . 比對任何一個字元（但換行符號不算）
## * 比對前一個字元零次或更多次

if ($number =~ /\D+.*\n$/) {
    print "That's not a number!\n";
} else {
    print "Thank you.\n";
} # end if-else

