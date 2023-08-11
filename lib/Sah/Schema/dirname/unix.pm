package Sah::Schema::dirname::unix;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["str" => {
    summary => 'Filesystem directory name on a Unix system',
    match => '\A(?:/|/?(?:[^/\0]{1,255})(?:/[^/\0]{1,255})*)\z',
    'x.completion' => ['dirname'],
    prefilters => [
        'Path::expand_tilde',
        'Path::strip_slashes',
    ],

    examples => [
        {value=>'', valid=>0},
        {value=>'/', valid=>1},
        {value=>'foo/bar', valid=>1},
        {value=>'foo//bar', valid=>1, validated_value=>'foo/bar'},
        {value=>'a' x 256, valid=>0, summary=>'Path element too long'},
        {value=>"foo\0", valid=>0, summary=>"Contains null character"},
    ],

}];

1;
# ABSTRACT:
