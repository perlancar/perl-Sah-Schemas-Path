package Sah::Schema::dirname;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [str => {
    summary => 'Filesystem directory name',
    min_len => 1,

    'x.completion' => ['dirname'],
    'prefilters' => [
        'Path::expand_tilde_when_on_unix',
        'Path::strip_slashes_when_on_unix',
    ],

    examples => [
        {value=>'', valid=>0},
        {value=>'foo', valid=>1},
        {value=>'foo/bar', valid=>1},
    ],

}, {}];

1;
# ABSTRACT:
