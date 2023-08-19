package Sah::Schema::filenames;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [array => {
    summary => 'List of filesystem file names',
    description => <<'MARKDOWN',

Coerces from string by expanding the glob pattern in the string.

MARKDOWN
    of => ['filename', {req=>1}],
    'x.element_completion' => ['filename'],
    'x.perl.coerce_rules' => [
        'From_str::expand_glob',
    ],
}];

1;
# ABSTRACT:
