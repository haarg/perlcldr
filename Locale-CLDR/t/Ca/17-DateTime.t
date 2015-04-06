#!/usr/bin/perl
# Do not normalise this test file. It has deliberately unnormalised characters in it.
use v5.10;
use strict;
use warnings;
use utf8;
use if $^V ge v5.12.0, feature => 'unicode_strings';

use Test::More tests => 2;
use Test::Exception;

use ok 'Locale::CLDR';

use DateTime;

my $ca_fr = Locale::CLDR->new('ca_FR');

my $dt_ca_fr = DateTime->new(
	year => 1966,
	month => 10,
	day        => 25,
    hour       => 7,
    minute     => 15,
    second     => 47,
    locale 	   => $ca_fr,
	time_zone  => 'Europe/London',
);

is ($dt_ca_fr->format_cldr($ca_fr->datetime_format_full), 'dimarts, 25 d’octubre de 1966 a les 7:15:47 Europe/London', 'Date Time Format Full US English ');