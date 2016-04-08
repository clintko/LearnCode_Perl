# Youtube: Coding 101 21: Perl: Getting Started
# 
use strict;
use warnings;

# scalar
my $var1 = "test";
my $var2 = 12345;
print "\nScalar\n";
print "variable01: $var1\n";
print "variable02: $var2\n";

<STDIN>;

# array
my @arr1 = ("ele01", "ele02", "ele03");
my @arr2 = (100, 200, 300);
print "\nArray\n";
print "array one: 1st element 01 $arr1[0]\n";
print "array one: 2nd element 02 $arr1[1]\n";
print "array one: 3rd element 03 $arr1[2]\n";
print "array two: @arr2\n";

<STDIN>;
    
# copy perl array
# unlike the list in python
# the change in copied array will not affect the original array
my @arr3 = @arr1;
print "\nArray Mutation & Coping Array\n";
print "before mutation\n";
print "array one:   @arr1\n";
print "array three: @arr3\n";
$arr3[0] = "mutation";
print "after mutation\n";
print "array one:   @arr1\n";
print "array three: @arr3\n";

<STDIN>;

#
print "\nSome Interesting things about printing string\n";
my @shows = ("All About Android",
             "Android App Arena",
             "Before You Buy",
             "Coding 101",
             "FLOSS Weekly");

# Define our network name
my $network = "TWiT";

# pick a number...any number!
my $selected = 3;

print "1. Subscribe to $shows[$selected], a fine $network show!\n";
print "2. Subscribe to" . " $shows[$selected]" . ", a fine $network" . " show!\n";
print "3. Subscribe to '$shows[$selected]', a fine $network show!\n";
print "4. Subscribe to \"$shows[$selected]\", a fine $network show!\n";
print '5. Subscribe to $shows[$selected], a fine $network show!\n';


