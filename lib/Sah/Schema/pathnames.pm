package Sah::Schema::pathnames;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [array => {
    summary => 'List of filesystem path names',
    description => <<'_',

Coerces from string by expanding the glob pattern in the string.

_
    of => ['pathname', {req=>1}, {}],
    'x.element_completion' => ['filename'],
    'x.perl.coerce_rules' => [
        'From_str::expand_glob',
    ],
}, {}];

1;
# ABSTRACT:
