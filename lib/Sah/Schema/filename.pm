package Sah::Schema::filename;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [str => {
    summary => 'Filesystem file name',
    'x.completion' => ['filename'],
    prefilters => [
        'Str::expand_tilde_when_on_unix',
        'Str::strip_slashes_when_on_unix',
    ],
}, {}];

1;
# ABSTRACT:
