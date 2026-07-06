#!/usr/bin/env perl

use strict;
use warnings;
use feature 'say';

# From: https://regex101.com/r/vkijKf/1
if (<STDIN> =~ /^(0|[1-9]\d*)\.(0|[1-9]\d*)\.(0|[1-9]\d*)(?:-((?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\.(?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\+([0-9a-zA-Z-]+(?:\.[0-9a-zA-Z-]+)*))?$/) {
    foreach my $index (0 .. $#{^CAPTURE}) {
        say ${^CAPTURE}[$index] // "";
    }
}
