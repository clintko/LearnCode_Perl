# Coding 101 23: Perl: RegEx Search and Replace
# https://www.youtube.com/watch?v=1ywK9wKngOI&list=PLTmR6HsT7005r9J50_HCOGkyGc8dDYu7J&index=3&nohtml5=False

# replace
print "Input a animal: ";
my $animal;
$animal =  <STDIN>;
$animal =~ s/cat/rabbit/gi; 
# s tells perl to replace sth with sth
# g global (if not specified, only the first one is replaced
# i case insensitive
print "Your input: $animal";
print "\n";

print "what is your favorite movie? ";
my $movie;
$movie = <STDIN>;
$movie =~ s/\s/\n/g;
print "---\n$ movie\n";
print "\n";


