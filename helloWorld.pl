use strict;
use warnings;

# print out the message
print "hello world\n";

# prompt user 
print "What is your name: ";

# Variables:
    # scalar - single value ($)
    # array - holds multiple values(@)
    # hash - holds multiple values, but differently (%)
my $name = readline STDIN;
chomp ($name);   # this line chop out the \n of variable name
print "\nYour name is $name\n";


# Conditions: if then statement
# ex: if today is Tuesday, then I have to go to work
# if (condition is met)
#     {do this action}
print "Enter your age: ";
my $age = readline STDIN;
chomp ($age);

if ($age < 10) {
    print "\nyour age is less than 10";
} elsif ($age > 10) {
    print "\nyour age is greater than 10";
} else {
    print "\nyour age is equal to 10";
} # end if-else

x
