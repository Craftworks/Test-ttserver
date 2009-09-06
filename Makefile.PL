use inc::Module::Install;

name     'Test-ttserver';
all_from 'lib/Test/ttserver.pm';
author   q{Craftworks <craftwork at cpan org>};
license  'perl';

requires('version');

build_requires('Test::More');
build_requires('Test::UseAllModules');

author_tests 'xt';

auto_install;

WriteAll;
