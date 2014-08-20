use strict;
use warnings;
use Test::More;
use Test::ttserver;

my $pid = fork;
if ($pid) {
    waitpid $pid, 0;
    is +($? >> 8), 1, "Check wstat";
    done_testing;
} elsif (defined $pid) {
    our $TT = Test::ttserver->new or die $Test::ttserver::errstr;
    exit 1;
} else {
    die "Failed to fork";
}
