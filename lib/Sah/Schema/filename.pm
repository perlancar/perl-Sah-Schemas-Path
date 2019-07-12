package Sah::Schema::filename;

# DATE
# VERSION

our $schema = [str => {
    summary => 'Filesystem file name',
    'x.completion' => ['filename'],
}, {}];

1;
# ABSTRACT:
