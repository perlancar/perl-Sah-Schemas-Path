package Sah::Schema::filename;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [str => {
    summary => 'Filesystem file name',
    description => <<'MARKDOWN',

This schema is basically string with some checks and prefilters. Why use this
schema instead of plain ol' str? Mainly to give you the ability to change tilde
to user's home directory, e.g. `~/foo.txt` into `/home/someuser/foo.txt`.
Normally this expansion is done by a Unix shell, but sometimes your program
receives an unexpanded path, e.g. when you get it from some config file.

See also more OS-specific schemas like `filename::unix`, which adds some more
checks (e.g. filename cannot contain forward slash and each component cannot be
longer than 255 characters) and preprocessing (e.g. stripping extraneous slashes
like `foo//bar` into `foo/bar`.

What's the difference between this schema and `dirname`? The default completion
rule. `dirname`'s completion only includes directories and not files.

MARKDOWN

    min_len => 1,

    'x.completion' => ['filename'],
    prefilters => [
        'Path::expand_tilde_when_on_unix',
        'Path::strip_slashes_when_on_unix',
    ],

    examples => [
        {value=>'', valid=>0},
        {value=>'foo', valid=>1},
        {value=>'foo/bar', valid=>1},
    ],

}];

1;
# ABSTRACT:
