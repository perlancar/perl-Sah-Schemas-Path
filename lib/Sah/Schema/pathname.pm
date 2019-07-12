package Sah::Schema::pathname;

# DATE
# VERSION

our $schema = [str => {
    summary => 'Filesystem path name',
    'x.completion' => ['filename'],
}, {}];

1;
# ABSTRACT:
