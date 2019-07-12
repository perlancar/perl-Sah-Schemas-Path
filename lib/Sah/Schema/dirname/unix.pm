package Sah::Schema::dirname::unix;

# DATE
# VERSION

our $schema = ["str" => {
    summary => 'Filesystem directory name on a Unix system',
    match => '\A(?:/|/?(?:[^/\0]{1,255})(?:/[^/\0]{1,255})?)\z',
    'x.perl.coerce_rules' => [
        'str_strip_slashes',
    ],
}, {}];

1;
# ABSTRACT:
