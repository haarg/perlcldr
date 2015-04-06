#!/usr/bin/perl
# Do not normalise this test file. It has deliberately unnormalised characters in it.
use v5.10;
use strict;
use warnings;
use utf8;
use if $^V ge v5.12.0, feature => 'unicode_strings';

use Test::More tests => 57;
use Test::Exception;

use ok 'Locale::CLDR';

my $locale = Locale::CLDR->new('br_FR');
my $months = $locale->month_format_wide();
is_deeply ($months, [qw( Genver Cʼhwevrer Meurzh Ebrel Mae Mezheven Gouere Eost Gwengolo Here Du Kerzu )], 'Month format wide');
$months = $locale->month_format_abbreviated();
is_deeply ($months, [qw( Gen Cʼhwe Meur Ebr Mae Mezh Goue Eost Gwen Here Du Ker )], 'Month format abbreviated');
$months = $locale->month_format_narrow();
is_deeply ($months, [qw( 01 02 03 04 05 06 07 08 09 10 11 12 )], 'Month format narrow');
$months = $locale->month_stand_alone_wide();
is_deeply ($months, [qw( Genver Cʼhwevrer Meurzh Ebrel Mae Mezheven Gouere Eost Gwengolo Here Du Kerzu )], 'Month stand alone wide');
$months = $locale->month_stand_alone_abbreviated();
is_deeply ($months, [qw( Gen Cʼhwe Meur Ebr Mae Mezh Goue Eost Gwen Here Du Ker )], 'Month stand alone abbreviated');
$months = $locale->month_stand_alone_narrow();
is_deeply ($months, [qw( 01 02 03 04 05 06 07 08 09 10 11 12 )], 'Month stand alone narrow');

my $days = $locale->day_format_wide();
is_deeply ($days, [qw( Lun Meurzh Mercʼher Yaou Gwener Sadorn Sul )], 'Day format wide');
$days = $locale->day_format_abbreviated();
is_deeply ($days, [qw( Lun Meu. Mer. Yaou Gwe. Sad. Sul )], 'Day format abbreviated');
$days = $locale->day_format_narrow();
is_deeply ($days, [qw( L Mz Mc Y G Sa Su )], 'Day format narrow');
$days = $locale->day_stand_alone_wide();
is_deeply ($days, [qw( Lun Meurzh Mercʼher Yaou Gwener Sadorn Sul )], 'Day stand alone wide');
$days = $locale->day_stand_alone_abbreviated();
is_deeply ($days, [qw( Lun Meu. Mer. Yaou Gwe. Sad. Sul )], 'Day stand alone abbreviated');
$days = $locale->day_stand_alone_narrow();
is_deeply ($days, [qw( L Mz Mc Y G Sa Su )], 'Day stand alone narrow');

my $quarters = $locale->quarter_format_wide();
is_deeply ($quarters, ['1añ trimiziad', '2l trimiziad', '3e trimiziad', '4e trimiziad'], 'Quarter format wide');
$quarters = $locale->quarter_format_abbreviated();
is_deeply ($quarters, ['1añ trim.', '2l trim.', '3e trim.', '4e trim.' ], 'Quarter format abbreviated');
$quarters = $locale->quarter_format_narrow();
is_deeply ($quarters, [qw( 1 2 3 4 )], 'Quarter format narrow');
$quarters = $locale->quarter_stand_alone_wide();
is_deeply ($quarters, ['1añ trimiziad', '2l trimiziad', '3e trimiziad', '4e trimiziad'], 'Quarter stand alone wide');
$quarters = $locale->quarter_stand_alone_abbreviated();
is_deeply ($quarters, ['1añ trim.', '2l trim.', '3e trim.', '4e trim.'], 'Quarter stand alone abbreviated');
$quarters = $locale->quarter_stand_alone_narrow();
is_deeply ($quarters, [qw( 1 2 3 4 )], 'Quarter stand alone narrow');

my $am_pm = $locale->am_pm_wide();
is_deeply ($am_pm, [qw( A.M. G.M. )], 'AM PM wide');
$am_pm = $locale->am_pm_abbreviated();
is_deeply ($am_pm, [qw( A.M. G.M. )], 'AM PM abbreviated');
$am_pm = $locale->am_pm_narrow();
is_deeply ($am_pm, [qw( am gm )], 'AM PM narrow');
$am_pm = $locale->am_pm_format_wide();
is_deeply ($am_pm, { am => 'A.M.', noon => 'kreisteiz', pm => 'G.M.' }, 'AM PM format wide');
$am_pm = $locale->am_pm_format_abbreviated();
is_deeply ($am_pm, { am => 'A.M.', noon => 'kreisteiz', pm => 'G.M.' }, 'AM PM format abbreviated');
$am_pm = $locale->am_pm_format_narrow();
is_deeply ($am_pm, { am => 'am', noon => 'k', pm => 'gm' }, 'AM PM format narrow');
$am_pm = $locale->am_pm_stand_alone_wide();
is_deeply ($am_pm, { am => 'A.M.', noon => 'kreisteiz', pm => 'G.M.' }, 'AM PM stand alone wide');
$am_pm = $locale->am_pm_stand_alone_abbreviated();
is_deeply ($am_pm, { am => 'A.M.', noon => 'kreisteiz', pm => 'G.M.' }, 'AM PM stand alone abbreviated');
$am_pm = $locale->am_pm_stand_alone_narrow();
is_deeply ($am_pm, { am => 'am', noon => 'k', pm => 'gm' }, 'AM PM stand alone narrow');

my $era = $locale->era_wide();
is_deeply ($era, [qw( BCE CE )], 'Era wide');
$era = $locale->era_abbreviated();
is_deeply ($era, [qw( BCE CE )], 'Era abbreviated');
$era = $locale->era_narrow();
is_deeply ($era, [qw( BCE CE )], 'Era narrow');
$era = $locale->era_format_wide();
is_deeply ($era, [qw( BCE CE )], 'Era format wide');
$era = $locale->era_format_abbreviated();
is_deeply ($era, [qw( BCE CE )], 'Era format abbreviated');
$era = $locale->era_format_narrow();
is_deeply ($era, [qw( BCE CE )], 'Era format narrow');
$era = $locale->era_stand_alone_wide();
is_deeply ($era, [qw( BCE CE )], 'Era stand alone wide');
$era = $locale->era_stand_alone_abbreviated();
is_deeply ($era, [qw( BCE CE )], 'Era stand alone abbreviated');
$era = $locale->era_stand_alone_narrow();
is_deeply ($era, [qw( BCE CE )], 'Era stand alone narrow');

=for comment
Skipping These as the data set is wrong
my $day_period_data = $locale->get_day_period('0000');
is($day_period_data, 'A.M.', 'Day period data AM');
$day_period_data = $locale->get_day_period('1200');
is($day_period_data, 'G.M.', 'Day period data Noon');
$day_period_data = $locale->get_day_period('1210');
is($day_period_data, 'G.M.', 'Day period data PM');
=cut

my $date_format = $locale->date_format_full;
is($date_format, 'y MMMM d, EEEE', 'Date Format Full');
$date_format = $locale->date_format_long;
is($date_format, 'y MMMM d', 'Date Format Long');
$date_format = $locale->date_format_medium;
is($date_format, 'y MMM d', 'Date Format Medium');
$date_format = $locale->date_format_short;
is($date_format, 'y-MM-dd', 'Date Format Short');

my $time_format = $locale->time_format_full;
is($time_format, 'HH:mm:ss zzzz', 'Time Format Full');
$time_format = $locale->time_format_long;
is($time_format, 'HH:mm:ss z', 'Time Format Long');
$time_format = $locale->time_format_medium;
is($time_format, 'HH:mm:ss', 'Time Format Medium');
$time_format = $locale->time_format_short;
is($time_format, 'HH:mm', 'Time Format Short');

my $date_time_format = $locale->datetime_format_full;
is($date_time_format, "y MMMM d, EEEE HH:mm:ss zzzz", 'Date Time Format Full');
$date_time_format = $locale->datetime_format_long;
is($date_time_format, "y MMMM d HH:mm:ss z", 'Date Time Format Long');
$date_time_format = $locale->datetime_format_medium;
is($date_time_format, 'y MMM d HH:mm:ss', 'Date Time Format Medium');
$date_time_format = $locale->datetime_format_short;
is($date_time_format, 'y-MM-dd HH:mm', 'Date Time Format Short');

is ($locale->prefers_24_hour_time(), 1, 'Prefers 24 hour time');
is ($locale->first_day_of_week(), 1, 'First day of week recoded for DateTime');

is($locale->era_boundry( gregorian => -12 ), 0, 'Gregorian era');
is($locale->era_boundry( japanese => 9610217 ), 38, 'Japanese era');

is($locale->week_data_min_days(), 4, 'Number of days a week must have in Breton before it counts as the first week of a year');
is($locale->week_data_first_day(), 'mon', 'First day of the week in Breton when displaying calendars');
is($locale->week_data_weekend_start(), 'sat', 'First day of the week end in Breton');
is($locale->week_data_weekend_end(), 'sun', 'Last day of the week end in Breton');
