use strict;
use warnings;
use LWP::Simple;
use utf8;
binmode(STDOUT, ":utf8");

# Note URL
#台南國賓影城
# "http://www.atmovies.com.tw/showtime/theater_t06608_a06.html";
#台南新光影城
# "http://www.atmovies.com.tw/showtime/theater_t06607_a06.html";
#台南大遠百威秀影城
# "http://www.atmovies.com.tw/showtime/theater_t06609_a06.html";

# define the global variable
my $URL;
my @content;
my $piece;

# define the function
sub menu {
    # print out the website and prompt user input
    print "Which movie website are you interesting in?\n";
    print "(1) 台南國賓影城\n";
    print "(2) 台南新光影城\n";
    print "(3) 台南大遠百威秀影城\n";
    print "your choice: ";

    # read from user input and specify the url
    my $choice = <STDIN>;
    chomp($choice);
    if ($choice == 1) {
	$URL = "http://www.atmovies.com.tw/showtime/theater_t06608_a06.html";
	@content = split('\n', get($URL));
    } elsif ($choice == 2) {
	$URL = "http://www.atmovies.com.tw/showtime/theater_t06607_a06.html";
	@content = split('\n', get($URL));
    } elsif ($choice == 3) {
	$URL = "http://www.atmovies.com.tw/showtime/theater_t06609_a06.html";
	@content = split('\n', get($URL));
    } else {
	print "Wrong Input\n";
	exit;
    } # end if-else
} # end func menu

sub show {
    my ($text) = @_;
    $text =~ s/\<.{0,3}\>//g;  # remove <\a> <li> <\li>
    $text =~ s/\<ahref.+\>//g; # remove <ahref......>
    print $text."\n";
} # end func show

# print out the menu and query url content
&menu;

# read each line of the url content and print out the movie name/time
print "===== The movie showtime =====\n";
for my $i (0 .. $#content) {
    # get each string and preprocess the string
    $piece = $content[$i];
    chomp($piece);

    # if no information in the line, continue
    # (the check is optional, easier for debugging)
    $piece =~ s/[\s\t\n]//gi;
    if ($piece eq "") {
        next;
    } # end if

    # continue if matching the word "option", "atmovie"
    # note: you could also apply ^(.(?!stringToExclude))*$
    if (($piece =~ /option/gi) || ($piece =~ /atmovie/gi)) {
	next;
    } # end if
    
    # get movie name
    if (($piece =~ /\/movie\//gi)){
	&show($piece);
    } # end if
    
    # get movie time
    if ($piece =~ /\>\d\d.\d\d\</){
	&show($piece);
    } # end if
} # end for loop
