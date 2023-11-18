package Sah::Schema::pathname::unix::basename;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["str" => {
    summary => 'Filesystem base path name on a Unix system',
    description => <<'MARKDOWN',

This is like the `filename::unix` schema but not allowing directory parts.
Difference with `dirname::unix::basename` and `filename::unix::basename`: the
completion rule.

MARKDOWN
    match => '\A(?:[^/\0]{1,255})\z',
    'x.completion' => ['pathname_curdir'],
    prefilters => [
    ],

    examples => [
        {value=>'', valid=>0},
        {value=>'/', valid=>0, summary=>'Contains path symbol'},
        {value=>'foo/bar', valid=>0, summary=>'Contains directory part'},
        {value=>'a' x 256, valid=>0, summary=>'Path element too long'},
        {value=>"foo\0", valid=>0, summary=>"Contains null character"},
    ],

}];

1;
# ABSTRACT:
