package Sah::Schema::pathname::unix;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["str" => {
    summary => 'Filesystem path name on a Unix system',
    match => '\A(?:/|/?(?:[^/\0]{1,255})(?:/[^/\0]{1,255})*)\z',
    prefilters => [
        'Path::expand_tilde',
        'Path::strip_slashes',
    ],
}, {}];

1;
# ABSTRACT:
