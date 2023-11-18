package Sah::Schema::filename::unix::basename;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["str" => {
    summary => 'Filesystem base file name on a Unix system',
    match => '\A(?:[^/\0]{1,255})\z',
    description => <<'MARKDOWN',

This is like the `filename::unix` schema but not allowing directory parts.
Difference with `dirname::unix::basename` and `pathname::unix::basename`: the
completion rule.

MARKDOWN
    'x.completion' => ['filename_curdir'],
    prefilters => [
    ],

    examples => [
        {value=>'', valid=>0},
        {value=>'foo', valid=>1},
        {value=>'foo/bar', valid=>0, summary=>'Contains directory part'},
        {value=>'a' x 256, valid=>0, summary=>'Path element too long'},
        {value=>"foo\0", valid=>0, summary=>"Contains null character"},
    ],

}];

1;
# ABSTRACT:
