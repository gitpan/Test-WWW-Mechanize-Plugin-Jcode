use inc::Module::Install;
name 'Test-WWW-Mechanize-Plugin-Jcode';
all_from 'lib/Test/WWW/Mechanize/Plugin/Jcode.pm';

requires 'Jcode'                => 0;
requires 'Test::More'           => 0.32;
requires 'Test::WWW::Mechanize' => '1.00';
requires 'WWW::Mechanize'       => '1.00';

tests 't/*.t t/*/*.t t/*/*/*.t t/*/*/*/*.t';
test_requires 'Test::More';
test_requires 'YAML';
author_tests('xt');
use_test_base;
auto_include;
WriteAll;
