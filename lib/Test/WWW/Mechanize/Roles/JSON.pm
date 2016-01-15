package Test::WWW::Mechanize::Roles::JSON;
use strict;
use warnings;
use Package::Stash () ;
use Test::WWW::Mechanize::JSON () ;
use Moose::Role;

BEGIN {
    my $stash = Package::Stash->new(__PACKAGE__);
    my $them = Package::Stash->new('Test::WWW::Mechanize::JSON');
    for ($them->list_all_symbols('CODE')) {
        $stash->add_symbol( '&' . $_, $them->get_symbol( '&' . $_ ) )
    }
}

1;
