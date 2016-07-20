package Sah::Schema::dirname;

# DATE
# VERSION

our $schema = [str => {
    summary => 'Filesystem directory name',
    'x.perl.coerce_rules' => [
        'str_strip_trailing_slash',
    ],
}, {}];

1;
# ABSTRACT:
