package Sah::Schema::dirname::unix;

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
}, {}];

1;
# ABSTRACT:
