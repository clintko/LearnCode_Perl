use strict;
use warnings;


# specify a code block
sub hello {
    print "hello world\n";
}
# execute the code block
&hello;


# variable scope of code block
my $dog = "Niki";
print "your dog name: $dog\n";

{
    print "[inside block] your dog name $dog\n";
    $dog = "John";
    print "[inside block] your dog name $dog\n";
}

print "your dog name: $dog\n";
