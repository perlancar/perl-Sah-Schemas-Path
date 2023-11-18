package Sah::Schema::dirname::unix::basename;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["str" => {
    summary => 'Filesystem base directory name on a Unix system',
    description => <<'MARKDOWN',

This is like the `dirname::unix` schema but not allowing parent directory parts.
Difference with `filename::unix::basename` and `pathname::unix::basename`: the
completion rule.

MARKDOWN
    match => '\A(?:[^/\0]{1,255})\z',
    'x.completion' => ['dirname_curdir'],
    prefilters => [
    ],

    examples => [
        {value=>'', valid=>0},
        {value=>'/', valid=>0, summary=>"Contains path"},
        {value=>'foo/bar', valid=>0, summary=>'Contains parent directory part'},
        {value=>'a' x 256, valid=>0, summary=>'Path element too long'},
        {value=>"foo\0", valid=>0, summary=>"Contains null character"},
    ],

}];

1;
# ABSTRACT:
