package Sah::Schema::filename;

# DATE
# VERSION

our $schema = [str => {
    summary => 'Filesystem file name',
    'x.perl.coerce_rules' => [
        'str_strip_trailing_slash',
    ],
}, {}];

1;
# ABSTRACT:
