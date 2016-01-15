package Test::WWW::Mechanize::Roles;
use strict;
use warnings;

our $VERSION = '0.001';

use Moose;
use MooseX::NonMoose;

extends 'Test::WWW::Mechanize';

__PACKAGE__->meta->make_immutable;
1;
