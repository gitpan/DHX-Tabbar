#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'DHX::Tabbar' ) || print "Bail out!\n";
}

diag( "Testing DHX::Tabbar $DHX::Tabbar::VERSION, Perl $], $^X" );
