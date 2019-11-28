package Sah::Schema::filename::unix;

# AUTHOR
# DATE
# DIST
# VERSION

our $schema = ["str" => {
    summary => 'Filesystem file name on a Unix system',
    match => '\A(?:/|/?(?:[^/\0]{1,255})(?:/[^/\0]{1,255})?)\z',
    'x.perl.coerce_rules' => [
        'From_str::StripSlashes',
    ],
}, {}];

1;
# ABSTRACT:
