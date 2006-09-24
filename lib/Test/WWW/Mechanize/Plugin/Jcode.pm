package Test::WWW::Mechanize::Plugin::Jcode;
use strict;
use warnings;
our $VERSION = '0.02';

use Test::WWW::Mechanize;
use Jcode;
use Test::More;

sub Test::WWW::Mechanize::content_charset_is {
    my ($self, $expected, $test_name) = @_;

    my ($code,) = Jcode::getcode($self->content);

    is($code, $expected, $test_name);
}

1;
__END__

=head1 NAME

Test::WWW::Mechanize::Plugin::Jcode - add the charset test method to Test::WWW::Mechanize

=head1 SYNOPSIS

  use Test::WWW::Mechanize;
  use Test::WWW::Mechanize::Plugin::Jcode;
  
  my $mech = Test::WWW::Mechanize->new;
  $mech->get_ok('http://www.google.co.jp/', 'get google');
  $mech->content_charset_is('sjis', 'google is sjis');

=head1 DESCRIPTION

Test::WWW::Mechanize::Plugin::Jcode is plugin for Test::WWW::Mechanize.
You can test the web page's charset, by Jcode::getcode.

=head1 METHODS

=head2 $mech->content_charset_is($chraset, [$test_name])

Tells if the charset of the page is the the expected charset.

=head1 AUTHOR

MATSUNO Tokuhiro E<lt>tokuhirom+cpan@gmail.comE<gt>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

L<WWW::Mechanize>, L<Test::WWW::Mechanize>

=cut
