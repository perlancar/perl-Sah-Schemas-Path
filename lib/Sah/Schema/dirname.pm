package Sah::Schema::dirname;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [str => {
    summary => 'Filesystem directory name',
    'x.completion' => ['dirname'],
    'prefilters' => [
        'Path::expand_tilde_when_on_unix',
        'Path::strip_slashes_when_on_unix',
    ],
}, {}];

1;
# ABSTRACT:
