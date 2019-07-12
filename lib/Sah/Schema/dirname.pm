package Sah::Schema::dirname;

# DATE
# VERSION

our $schema = [str => {
    summary => 'Filesystem directory name',
    'x.completion' => ['dirname'],
}, {}];

1;
# ABSTRACT:
