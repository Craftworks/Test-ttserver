use strict;
use warnings;
use ExtUtils::MakeMaker;
use Test::Dependencies
    exclude => [qw/Test::Dependencies Test::ttserver/],
    style   => 'light';

ok_dependencies();
