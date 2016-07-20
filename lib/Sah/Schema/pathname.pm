package Sah::Schema::pathname;

# DATE
# VERSION

our $schema = [str => {
    summary => 'Filesystem path name',
    'x.perl.coerce_rules' => [
        'str_strip_trailing_slash',
    ],
}, {}];

1;
# ABSTRACT:
