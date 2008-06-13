use strict;
use warnings;
use Test::More tests => 7;
use Test::WWW::Mechanize;
use Test::WWW::Mechanize::Plugin::Jcode;

can_ok('Test::WWW::Mechanize', 'content_charset_is');

my $mech = Test::WWW::Mechanize->new;
ok($mech, 'create Test::WWW::Mechanize');
can_ok($mech, 'content_charset_is');

$mech->get_ok('http://www.google.co.jp/', 'get google');
$mech->content_charset_is('sjis', 'google is sjis');

$mech->get_ok('http://www.msn.co.jp/', 'get msn');
$mech->content_charset_is('utf8', 'msn is utf8');

