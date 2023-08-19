package Sah::Schema::pathnames;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [array => {
    summary => 'List of filesystem path names',
    description => <<'MARKDOWN',

Coerces from string by expanding the glob pattern in the string.

MARKDOWN
    of => ['pathname', {req=>1}],
    'x.element_completion' => ['filename'],
    'x.perl.coerce_rules' => [
        'From_str::expand_glob',
    ],
}];

1;
# ABSTRACT:
