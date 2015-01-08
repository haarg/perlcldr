#!/usr/bin/perl
# Do not normalise this test file. It has deliberately unnormalised characters in it.
use v5.10;
use strict;
use warnings;
use utf8;
use if $^V ge v5.12.0, feature => 'unicode_strings';

use Test::More tests => 290;
use Test::Exception;

use ok 'Locale::CLDR';

my $locale = Locale::CLDR->new('br_FR');

is($locale->unit(1, 'acre', 'narrow'), '1 ac', 'Breton narrow 1 acre');
is($locale->unit(2, 'acre', 'narrow'), '2 ac', 'Breton narrow 2 acres');
is($locale->unit(1, 'acre', 'short'), '1 ac', 'Breton short 1 acre');
is($locale->unit(2, 'acre', 'short'), '2 ac', 'Breton short 2 acres');
is($locale->unit(1, 'acre'), '1 ac', 'Breton long 1 acre');
is($locale->unit(2, 'acre'), '2 ac', 'Breton long 2 acres');
is($locale->unit(1, 'arc-minute', 'narrow'), '1′', 'Breton narrow 1 minute');
is($locale->unit(2, 'arc-minute', 'narrow'), '2′', 'Breton narrow 2 minutes');
is($locale->unit(1, 'arc-minute', 'short'), '1′', 'Breton short 1 arc minute');
is($locale->unit(2, 'arc-minute', 'short'), '2′', 'Breton short 2 arc minutes');
is($locale->unit(1, 'arc-minute'), '1′', 'Breton long 1 arc minute');
is($locale->unit(2, 'arc-minute'), '2′', 'Breton long 2 arc minutes');
is($locale->unit(1, 'arc-second', 'narrow'), '1″', 'Breton narrow 1 second');
is($locale->unit(2, 'arc-second', 'narrow'), '2″', 'Breton narrow 2 seconds');
is($locale->unit(1, 'arc-second', 'short'), '1″', 'Breton short 1 arc second');
is($locale->unit(2, 'arc-second', 'short'), '2″', 'Breton short 2 arc seconds');
is($locale->unit(1, 'arc-second'), '1″', 'Breton long 1 arc second');
is($locale->unit(2, 'arc-second'), '2″', 'Breton long 2 arc seconds');
is($locale->unit(1, 'celsius', 'narrow'), '1°C', 'Breton narrow 1 degree Celsius');
is($locale->unit(2, 'celsius', 'narrow'), '2°C', 'Breton narrow 2 degrees Celsius');
is($locale->unit(1, 'celsius', 'short'), '1°C', 'Breton short 1 degree Celsius');
is($locale->unit(2, 'celsius', 'short'), '2°C', 'Breton short 2 degrees Celsius');
is($locale->unit(1, 'celsius'), '1 derez Celsius', 'Breton long 1 degree Celsius');
is($locale->unit(2, 'celsius'), '2 zerez Celsius', 'Breton long 2 degrees Celsius');
is($locale->unit(1, 'centimeter', 'narrow'), '1 cm', 'Breton narrow 1 centimetre');
is($locale->unit(2, 'centimeter', 'narrow'), '2 cm', 'Breton narrow 2 centimetres');
is($locale->unit(1, 'centimeter', 'short'), '1 cm', 'Breton short 1 centimetre');
is($locale->unit(2, 'centimeter', 'short'), '2 cm', 'Breton short 2 centimetres');
is($locale->unit(1, 'centimeter'), '1 c\'hentimetr', 'Breton long 1 centimetre');
is($locale->unit(2, 'centimeter'), '2 gentimetr', 'Breton long 2 centimetres');
is($locale->unit(1, 'cubic-kilometer', 'narrow'), '1 km³', 'Breton narrow 1 cubic kilometre');
is($locale->unit(2, 'cubic-kilometer', 'narrow'), '2 km³', 'Breton narrow 2 cubic kilometres');
is($locale->unit(1, 'cubic-kilometer', 'short'), '1 km³', 'Breton short 1 cubic kilometre');
is($locale->unit(2, 'cubic-kilometer', 'short'), '2 km³', 'Breton short 2 cubic kilometres');
is($locale->unit(1, 'cubic-kilometer'), '1 c\'hilometr diñs', 'Breton long 1 cubic kilometre');
is($locale->unit(2, 'cubic-kilometer'), '2 gilometr diñs', 'Breton long 2 cubic kilometres');
is($locale->unit(1, 'cubic-mile', 'narrow'), '1 mi³', 'Breton narrow 1 cubic mile');
is($locale->unit(2, 'cubic-mile', 'narrow'), '2 mi³', 'Breton narrow 2 cubic miles');
is($locale->unit(1, 'cubic-mile', 'short'), '1 mi³', 'Breton short 1 cubic mile');
is($locale->unit(2, 'cubic-mile', 'short'), '2 mi³', 'Breton short 2 cubic miles');
is($locale->unit(1, 'cubic-mile'), '1 miltir diñs', 'Breton long 1 cubic mile');
is($locale->unit(2, 'cubic-mile'), '2 viltir diñs', 'Breton long 2 cubic miles');
is($locale->unit(1, 'day', 'narrow'), '1 d', 'Breton narrow 1 day');
is($locale->unit(2, 'day', 'narrow'), '2 d', 'Breton narrow 2 days');
is($locale->unit(1, 'day', 'short'), '1 d', 'Breton short 1 day');
is($locale->unit(2, 'day', 'short'), '2 d', 'Breton short 2 days');
is($locale->unit(1, 'day'), '1 deiz', 'Breton long 1 day');
is($locale->unit(2, 'day'), '2 zeiz', 'Breton long 2 days');
is($locale->unit(1, 'degree', 'narrow'), '1°', 'Breton narrow 1 degree');
is($locale->unit(2, 'degree', 'narrow'), '2°', 'Breton narrow 2 degrees');
is($locale->unit(1, 'degree', 'short'), '1°', 'Breton short 1 degree');
is($locale->unit(2, 'degree', 'short'), '2°', 'Breton short 2 degree');
is($locale->unit(1, 'degree'), '1 derez', 'Breton long 1 degree');
is($locale->unit(2, 'degree'), '2 zerez', 'Breton long 2 degrees');
is($locale->unit(1, 'fahrenheit', 'narrow'), '1°F', 'Breton narrow 1 degree Fahrenheit');
is($locale->unit(2, 'fahrenheit', 'narrow'), '2°F', 'Breton narrow 2 degrees Fahrenheit');
is($locale->unit(1, 'fahrenheit', 'short'), '1°F', 'Breton short 1 degree Fahrenheit');
is($locale->unit(2, 'fahrenheit', 'short'), '2°F', 'Breton short 2 degrees Fahrenheit');
is($locale->unit(1, 'fahrenheit'), '1 derez Fahrenheit', 'Breton long 1 degree Fahrenheit');
is($locale->unit(2, 'fahrenheit'), '2 zerez Fahrenheit', 'Breton long 2 degrees Fahrenheit');
is($locale->unit(1, 'foot', 'narrow'), '1′', 'Breton narrow 1 foot');
is($locale->unit(2, 'foot', 'narrow'), '2′', 'Breton narrow 2 feet');
is($locale->unit(1, 'foot', 'short'), '1 ft', 'Breton short 1 foot');
is($locale->unit(2, 'foot', 'short'), '2 ft', 'Breton short 2 feet');
is($locale->unit(1, 'foot'), '1 troatad', 'Breton long 1 foot');
is($locale->unit(2, 'foot'), '2 droatad', 'Breton long 2 feet');
is($locale->unit(1, 'g-force', 'narrow'), '1 G', 'Breton narrow 1 g-force');
is($locale->unit(2, 'g-force', 'narrow'), '2 G', 'Breton narrow 2 g-force');
is($locale->unit(1, 'g-force', 'short'), '1 G', 'Breton short 1 g-force');
is($locale->unit(2, 'g-force', 'short'), '2 G', 'Breton short 2 g-force');
is($locale->unit(1, 'g-force'), '1 G', 'Breton long 1 g-force');
is($locale->unit(2, 'g-force'), '2 G', 'Breton long 2 g-force');
is($locale->unit(1, 'gram', 'narrow'), '1 g', 'Breton narrow 1 gram');
is($locale->unit(2, 'gram', 'narrow'), '2 g', 'Breton narrow 2 grams');
is($locale->unit(1, 'gram', 'short'), '1 g', 'Breton short 1 gram');
is($locale->unit(2, 'gram', 'short'), '2 g', 'Breton short 2 grams');
is($locale->unit(1, 'gram'), '1 gramm', 'Breton long 1 gram');
is($locale->unit(2, 'gram'), '2 c\'hramm', 'Breton long 2 grams');
is($locale->unit(1, 'hectare', 'narrow'), '1 ha', 'Breton narrow 1 hectare');
is($locale->unit(2, 'hectare', 'narrow'), '2 ha', 'Breton narrow 2 hectares');
is($locale->unit(1, 'hectare', 'short'), '1 ha', 'Breton short 1 hectare');
is($locale->unit(2, 'hectare', 'short'), '2 ha', 'Breton short 2 hectares');
is($locale->unit(1, 'hectare'), '1 hektar', 'Breton long 1 hectare');
is($locale->unit(2, 'hectare'), '2 hektar', 'Breton long 2 hectares');
is($locale->unit(1, 'hectopascal', 'narrow'), '1 hPa', 'Breton narrow 1 hectopascal');
is($locale->unit(2, 'hectopascal', 'narrow'), '2 hPa', 'Breton narrow 2 hectopascals');
is($locale->unit(1, 'hectopascal', 'short'), '1 hPa', 'Breton short 1 hectopascal');
is($locale->unit(2, 'hectopascal', 'short'), '2 hPa', 'Breton short 2 hectopascals');
is($locale->unit(1, 'hectopascal'), '1 hektopaskal', 'Breton long 1 hectopascal');
is($locale->unit(2, 'hectopascal'), '2 hektopaskal', 'Breton long 2 hectopascals');
is($locale->unit(1, 'horsepower', 'narrow'), '1 hp', 'Breton narrow 1 horsepower');
is($locale->unit(2, 'horsepower', 'narrow'), '2 hp', 'Breton narrow 2 horsepower');
is($locale->unit(1, 'horsepower', 'short'), '1 hp', 'Breton short 1 horsepower');
is($locale->unit(2, 'horsepower', 'short'), '2 hp', 'Breton short 2 horsepower');
is($locale->unit(1, 'horsepower'), '1 hp', 'Breton long 1 horsepower');
is($locale->unit(2, 'horsepower'), '2 hp', 'Breton long 2 horsepower');
is($locale->unit(1, 'hour', 'narrow'), '1 h', 'Breton narrow 1 hour');
is($locale->unit(2, 'hour', 'narrow'), '2 h', 'Breton narrow 2 hours');
is($locale->unit(1, 'hour', 'short'), '1 h', 'Breton short 1 hour');
is($locale->unit(2, 'hour', 'short'), '2 h', 'Breton short 2 hours');
is($locale->unit(1, 'hour'), '1 eur', 'Breton long 1 hour');
is($locale->unit(2, 'hour'), '2 eur', 'Breton long 2 hours');
is($locale->unit(1, 'inch', 'narrow'), '1″', 'Breton narrow 1 inch');
is($locale->unit(2, 'inch', 'narrow'), '2″', 'Breton narrow 2 inches');
is($locale->unit(1, 'inch', 'short'), '1 in', 'Breton short 1 inch');
is($locale->unit(2, 'inch', 'short'), '2 in', 'Breton short 2 inches');
is($locale->unit(1, 'inch'), '1 meutad', 'Breton long 1 inch');
is($locale->unit(2, 'inch'), '2 veutad', 'Breton long 2 inches');
is($locale->unit(1, 'inch-hg', 'narrow'), '1 inHg', 'Breton narrow 1 inch of mercury');
is($locale->unit(2, 'inch-hg', 'narrow'), '2 inHg', 'Breton narrow 2 inches of mercury');
is($locale->unit(1, 'inch-hg', 'short'), '1 inHg', 'Breton short 1 inch of mercury');
is($locale->unit(2, 'inch-hg', 'short'), '2 inHg', 'Breton short 2 inches of mercury');
is($locale->unit(1, 'inch-hg'), '1 inHg', 'Breton long 1 inch of mercury');
is($locale->unit(2, 'inch-hg'), '2 inHg', 'Breton long 2 inches of mercury');
is($locale->unit(1, 'kilogram', 'narrow'), '1 kg', 'Breton narrow 1 kilogram');
is($locale->unit(2, 'kilogram', 'narrow'), '2 kg', 'Breton narrow 2 kilograms');
is($locale->unit(1, 'kilogram', 'short'), '1 kg', 'Breton short 1 kilogram');
is($locale->unit(2, 'kilogram', 'short'), '2 kg', 'Breton short 2 kilograms');
is($locale->unit(1, 'kilogram'), '1 c\'hilogramm', 'Breton long 1 kilogram');
is($locale->unit(2, 'kilogram'), '2 gilogramm', 'Breton long 2 kilograms');
is($locale->unit(1, 'kilometer', 'narrow'), '1 km', 'Breton narrow 1 kilometre');
is($locale->unit(2, 'kilometer', 'narrow'), '2 km', 'Breton narrow 2 kilometres');
is($locale->unit(1, 'kilometer', 'short'), '1 km', 'Breton short 1 kilometre');
is($locale->unit(2, 'kilometer', 'short'), '2 km', 'Breton short 2 kilometres');
is($locale->unit(1, 'kilometer'), '1 c\'hilometr', 'Breton long 1 kilometre');
is($locale->unit(2, 'kilometer'), '2 gilometr', 'Breton long 2 kilometres');
is($locale->unit(1, 'kilometer-per-hour', 'narrow'), '1 km/h', 'Breton narrow 1 kilometre per hour');
is($locale->unit(2, 'kilometer-per-hour', 'narrow'), '2 km/h', 'Breton narrow 2 kilometres per hour');
is($locale->unit(1, 'kilometer-per-hour', 'short'), '1 km/h', 'Breton short 1 kilometre per hour');
is($locale->unit(2, 'kilometer-per-hour', 'short'), '2 km/h', 'Breton short 2 kilometres per hour');
is($locale->unit(1, 'kilometer-per-hour'), '1 km/h', 'Breton long 1 kilometre per hour');
is($locale->unit(2, 'kilometer-per-hour'), '2 km/h', 'Breton long 2 kilometres per hour');
is($locale->unit(1, 'kilowatt', 'narrow'), '1 kW', 'Breton narrow 1 kilowatt');
is($locale->unit(2, 'kilowatt', 'narrow'), '2 kW', 'Breton narrow 2 kilowatts');
is($locale->unit(1, 'kilowatt', 'short'), '1 kW', 'Breton short 1 kilowatt');
is($locale->unit(2, 'kilowatt', 'short'), '2 kW', 'Breton short 2 kilowatts');
is($locale->unit(1, 'kilowatt'), '1 c\'hilowatt', 'Breton long 1 kilowatt');
is($locale->unit(2, 'kilowatt'), '2 gilowatt', 'Breton long 2 kilowatts');
is($locale->unit(1, 'light-year', 'narrow'), '1 ly', 'Breton narrow 1 light year');
is($locale->unit(2, 'light-year', 'narrow'), '2 ly', 'Breton narrow 2 light years');
is($locale->unit(1, 'light-year', 'short'), '1 ly', 'Breton short 1 light year');
is($locale->unit(2, 'light-year', 'short'), '2 ly', 'Breton short 2 light years');
is($locale->unit(1, 'light-year'), '1 ly', 'Breton long 1 light year');
is($locale->unit(2, 'light-year'), '2 ly', 'Breton long 2 light years');
is($locale->unit(1, 'liter', 'narrow'), '1 l', 'Breton narrow 1 litre');
is($locale->unit(2, 'liter', 'narrow'), '2 l', 'Breton narrow 2 litres');
is($locale->unit(1, 'liter', 'short'), '1 l', 'Breton short 1 litre');
is($locale->unit(2, 'liter', 'short'), '2 l', 'Breton short 2 litres');
is($locale->unit(1, 'liter'), '1 litr', 'Breton long 1 litre');
is($locale->unit(2, 'liter'), '2 litr', 'Breton long 2 litres');
is($locale->unit(1, 'meter', 'narrow'), '1 m', 'Breton narrow 1 meter');
is($locale->unit(2, 'meter', 'narrow'), '2 m', 'Breton narrow 2 meters');
is($locale->unit(1, 'meter', 'short'), '1 m', 'Breton short 1 meter');
is($locale->unit(2, 'meter', 'short'), '2 m', 'Breton short 2 meters');
is($locale->unit(1, 'meter'), '1 metr', 'Breton long 1 meter');
is($locale->unit(2, 'meter'), '2 vetr', 'Breton long 2 meters');
is($locale->unit(1, 'meter-per-second', 'narrow'), '1 m/s', 'Breton narrow 1 meter per second');
is($locale->unit(2, 'meter-per-second', 'narrow'), '2 m/s', 'Breton narrow 2 meters per second');
is($locale->unit(1, 'meter-per-second', 'short'), '1 m/s', 'Breton short 1 meter per second');
is($locale->unit(2, 'meter-per-second', 'short'), '2 m/s', 'Breton short 2 meters per second');
is($locale->unit(1, 'meter-per-second'), '1 metr dre eilenn', 'Breton long 1 meter per second');
is($locale->unit(2, 'meter-per-second'), '2 vetr dre eilenn', 'Breton long 2 meters per second');
is($locale->unit(1, 'mile', 'narrow'), '1 mi', 'Breton narrow 1 mile');
is($locale->unit(2, 'mile', 'narrow'), '2 mi', 'Breton narrow 2 miles');
is($locale->unit(1, 'mile', 'short'), '1 mi', 'Breton short 1 mile');
is($locale->unit(2, 'mile', 'short'), '2 mi', 'Breton short 2 miles');
is($locale->unit(1, 'mile'), '1 miltir', 'Breton long 1 mile');
is($locale->unit(2, 'mile'), '2 viltir', 'Breton long 2 miles');
is($locale->unit(1, 'mile-per-hour', 'narrow'), '1 mi/h', 'Breton narrow 1 mile per hour');
is($locale->unit(2, 'mile-per-hour', 'narrow'), '2 mi/h', 'Breton narrow 2 miles per hour');
is($locale->unit(1, 'mile-per-hour', 'short'), '1 mi/h', 'Breton short 1 mile per hour');
is($locale->unit(2, 'mile-per-hour', 'short'), '2 mi/h', 'Breton short 2 miles per hour');
is($locale->unit(1, 'mile-per-hour'), '1 mi/h', 'Breton long 1 mile per hour');
is($locale->unit(2, 'mile-per-hour'), '2 mi/h', 'Breton long 2 miles per hour');
is($locale->unit(1, 'millibar', 'narrow'), '1 mbar', 'Breton narrow 1 millibar');
is($locale->unit(2, 'millibar', 'narrow'), '2 mbar', 'Breton narrow 2 millibars');
is($locale->unit(1, 'millibar', 'short'), '1 mbar', 'Breton short 1 millibar');
is($locale->unit(2, 'millibar', 'short'), '2 mbar', 'Breton short 2 millibars');
is($locale->unit(1, 'millibar'), '1 milibar', 'Breton long 1 millibar');
is($locale->unit(2, 'millibar'), '2 vilibar', 'Breton long 2 millibars');
is($locale->unit(1, 'millimeter', 'narrow'), '1 mm', 'Breton narrow 1 millimetre');
is($locale->unit(2, 'millimeter', 'narrow'), '2 mm', 'Breton narrow 2 millimetres');
is($locale->unit(1, 'millimeter', 'short'), '1 mm', 'Breton short 1 millimetre');
is($locale->unit(2, 'millimeter', 'short'), '2 mm', 'Breton short 2 millimetres');
is($locale->unit(1, 'millimeter'), '1 milimetr', 'Breton long 1 millimetre');
is($locale->unit(2, 'millimeter'), '2 vilimetr', 'Breton long 2 millimetres');
is($locale->unit(1, 'millisecond', 'narrow'), '1 ms', 'Breton narrow 1 millisecond');
is($locale->unit(2, 'millisecond', 'narrow'), '2 ms', 'Breton narrow 2 milliseconds');
is($locale->unit(1, 'millisecond', 'short'), '1 ms', 'Breton short 1 millisecond');
is($locale->unit(2, 'millisecond', 'short'), '2 ms', 'Breton short 2 milliseconds');
is($locale->unit(1, 'millisecond'), '1 milieilenn', 'Breton long 1 millisecond');
is($locale->unit(2, 'millisecond'), '2 vilieilenn', 'Breton long 2 milliseconds');
is($locale->unit(1, 'minute', 'narrow'), '1 min', 'Breton narrow 1 minute');
is($locale->unit(2, 'minute', 'narrow'), '2 min', 'Breton narrow 2 minutes');
is($locale->unit(1, 'minute', 'short'), '1 min', 'Breton short 1 minute');
is($locale->unit(2, 'minute', 'short'), '2 min', 'Breton short 2 minutes');
is($locale->unit(1, 'minute'), '1 munut', 'Breton long 1 minute');
is($locale->unit(2, 'minute'), '2 vunut', 'Breton long 2 minutes');
is($locale->unit(1, 'month', 'narrow'), '1 m', 'Breton narrow 1 month');
is($locale->unit(2, 'month', 'narrow'), '2 m', 'Breton narrow 2 months');
is($locale->unit(1, 'month', 'short'), '1 m', 'Breton short 1 month');
is($locale->unit(2, 'month', 'short'), '2 m', 'Breton short 2 months');
is($locale->unit(1, 'month'), '1 miz', 'Breton long 1 month');
is($locale->unit(2, 'month'), '2 viz', 'Breton long 2 months');
is($locale->unit(1, 'ounce', 'narrow'), '1 oz', 'Breton narrow 1 ounce');
is($locale->unit(2, 'ounce', 'narrow'), '2 oz', 'Breton narrow 2 ounces');
is($locale->unit(1, 'ounce', 'short'), '1 oz', 'Breton short 1 ounce');
is($locale->unit(2, 'ounce', 'short'), '2 oz', 'Breton short 2 ounces');
is($locale->unit(1, 'ounce'), '1 oñs', 'Breton long 1 ounce');
is($locale->unit(2, 'ounce'), '2 oñs', 'Breton long 2 ounces');
is($locale->unit(1, 'millimeter-per-second', 'narrow'), '1 mm/s', 'Breton narrow 1 millimetre per second');
is($locale->unit(2, 'millimeter-per-second', 'narrow'), '2 mm/s', 'Breton narrow 2 millimetres per second');
is($locale->unit(1, 'millimeter-per-second', 'short'), '1 mm/s', 'Breton short 1 millimetre per second');
is($locale->unit(2, 'millimeter-per-second', 'short'), '2 mm/s', 'Breton short 2 millimetres per second');
is($locale->unit(1, 'millimeter-per-second'), '1 milimetr dre eilenn', 'Breton long 1 millimetre per second');
is($locale->unit(2, 'millimeter-per-second'), '2 vilimetr dre eilenn', 'Breton long 2 millimetres per second');
is($locale->unit(1, 'picometer', 'narrow'), '1 pm', 'Breton narrow 1 picometre');
is($locale->unit(2, 'picometer', 'narrow'), '2 pm', 'Breton narrow 2 picometres');
is($locale->unit(1, 'picometer', 'short'), '1 pm', 'Breton short 1 picometre');
is($locale->unit(2, 'picometer', 'short'), '2 pm', 'Breton short 2 picometres');
is($locale->unit(1, 'picometer'), '1 pikometr', 'Breton long 1 picometre');
is($locale->unit(2, 'picometer'), '2 bikometr', 'Breton long 2 picometres');
is($locale->unit(1, 'pound', 'narrow'), '1 lb', 'Breton narrow 1 pound');
is($locale->unit(2, 'pound', 'narrow'), '2 lb', 'Breton narrow 2 pounds');
is($locale->unit(1, 'pound', 'short'), '1 lb', 'Breton short 1 pound');
is($locale->unit(2, 'pound', 'short'), '2 lb', 'Breton short 2 pounds');
is($locale->unit(1, 'pound'), '1 lur', 'Breton long 1 pound');
is($locale->unit(2, 'pound'), '2 lur', 'Breton long 2 pounds');
is($locale->unit(1, 'second', 'narrow'), '1 s', 'Breton narrow 1 second');
is($locale->unit(2, 'second', 'narrow'), '2 s', 'Breton narrow 2 seconds');
is($locale->unit(1, 'second', 'short'), '1 s', 'Breton short 1 second');
is($locale->unit(2, 'second', 'short'), '2 s', 'Breton short 2 seconds');
is($locale->unit(1, 'second'), '1 eilenn', 'Breton long 1 second');
is($locale->unit(2, 'second'), '2 eilenn', 'Breton long 2 seconds');
is($locale->unit(1, 'square-foot', 'narrow'), '1 ft²', 'Breton narrow 1 square foot');
is($locale->unit(2, 'square-foot', 'narrow'), '2 ft²', 'Breton narrow 2 square feet');
is($locale->unit(1, 'square-foot', 'short'), '1 ft²', 'Breton short 1 square foot');
is($locale->unit(2, 'square-foot', 'short'), '2 ft²', 'Breton short 2 square feet');
is($locale->unit(1, 'square-foot'), '1 troatad karrez', 'Breton long 1 square foot');
is($locale->unit(2, 'square-foot'), '2 droatad karrez', 'Breton long 2 square feet');
is($locale->unit(1, 'square-kilometer', 'narrow'), '1 km²', 'Breton narrow 1 square kilometre');
is($locale->unit(2, 'square-kilometer', 'narrow'), '2 km²', 'Breton narrow 2 square kilometres');
is($locale->unit(1, 'square-kilometer', 'short'), '1 km²', 'Breton short 1 square kilometre');
is($locale->unit(2, 'square-kilometer', 'short'), '2 km²', 'Breton short 2 square kilometres');
is($locale->unit(1, 'square-kilometer'), '1 c\'hilometr karrez', 'Breton long 1 square kilometre');
is($locale->unit(2, 'square-kilometer'), '2 gilometr karrez', 'Breton long 2 square kilometres');
is($locale->unit(1, 'square-meter', 'narrow'), '1 m²', 'Breton narrow 1 square meter');
is($locale->unit(2, 'square-meter', 'narrow'), '2 m²', 'Breton narrow 2 square meters');
is($locale->unit(1, 'square-meter', 'short'), '1 m²', 'Breton short 1 square meter');
is($locale->unit(2, 'square-meter', 'short'), '2 m²', 'Breton short 2 square metres');
is($locale->unit(1, 'square-meter'), '1 metr karrez', 'Breton long 1 square metre');
is($locale->unit(2, 'square-meter'), '2 vetr karrez', 'Breton long 2 square metres');
is($locale->unit(1, 'square-mile', 'narrow'), '1 mi²', 'Breton narrow 1 square mile');
is($locale->unit(2, 'square-mile', 'narrow'), '2 mi²', 'Breton narrow 2 square miles');
is($locale->unit(1, 'square-mile', 'short'), '1 mi²', 'Breton short 1 square mile');
is($locale->unit(2, 'square-mile', 'short'), '2 mi²', 'Breton short 2 square miles');
is($locale->unit(1, 'square-mile'), '1 miltir karrez', 'Breton long 1 square mile');
is($locale->unit(2, 'square-mile'), '2 viltir karrez', 'Breton long 2 square miles');
is($locale->unit(1, 'watt', 'narrow'), '1 W', 'Breton narrow 1 watt');
is($locale->unit(2, 'watt', 'narrow'), '2 W', 'Breton narrow 2 watts');
is($locale->unit(1, 'watt', 'short'), '1 W', 'Breton short 1 watt');
is($locale->unit(2, 'watt', 'short'), '2 W', 'Breton short 2 watts');
is($locale->unit(1, 'watt'), '1 watt', 'Breton long 1 watt');
is($locale->unit(2, 'watt'), '2 watt', 'Breton long 2 watts');
is($locale->unit(1, 'week', 'narrow'), '1 w', 'Breton narrow 1 week');
is($locale->unit(2, 'week', 'narrow'), '2 w', 'Breton narrow 2 weeks');
is($locale->unit(1, 'week', 'short'), '1 w', 'Breton short 1 week');
is($locale->unit(2, 'week', 'short'), '2 w', 'Breton short 2 weeks');
is($locale->unit(1, 'week'), '1 w', 'Breton long 1 week');
is($locale->unit(2, 'week'), '2 w', 'Breton long 2 weeks');
is($locale->unit(1, 'yard', 'narrow'), '1 yd', 'Breton narrow 1 yard');
is($locale->unit(2, 'yard', 'narrow'), '2 yd', 'Breton narrow 2 yards');
is($locale->unit(1, 'yard', 'short'), '1 yd', 'Breton short 1 yard');
is($locale->unit(2, 'yard', 'short'), '2 yd', 'Breton short 2 yards');
is($locale->unit(1, 'yard'), '1 yd', 'Breton long 1 yard');
is($locale->unit(2, 'yard'), '2 yd', 'Breton long 2 yards');
is($locale->unit(1, 'year', 'narrow'), '1 y', 'Breton narrow 1 year');
is($locale->unit(2, 'year', 'narrow'), '2 y', 'Breton narrow 2 years');
is($locale->unit(1, 'year', 'short'), '1 y', 'Breton short 1 year');
is($locale->unit(2, 'year', 'short'), '2 y', 'Breton short 2 years');
is($locale->unit(1, 'year'), '1 bloaz', 'Breton long 1 year');
is($locale->unit(2, 'year'), '2 vloaz', 'Breton long 2 years');
is($locale->duration_unit('hm', 1, 2), '1:02', 'Breton duration hour, minuet');
is($locale->duration_unit('hms', 1, 2, 3 ), '1:02:03', 'Breton duration hour, minuet, second');
is($locale->duration_unit('ms', 1, 2 ), '1:02', 'Breton duration minuet, second');
is($locale->is_yes('Y'), 1, 'Breton is yes');
is($locale->is_yes('es'), 0, 'Breton is not yes');
is($locale->is_no('n'), 1, 'Breton is no');
is($locale->is_no('N&'), 0, 'Breton is not no');