package Sah::Schema::pathname::unix;

# AUTHOR
# DATE
# DIST
# VERSION

our $schema = ["str" => {
    summary => 'Filesystem path name on a Unix system',
    match => '\A(?:/|/?(?:[^/\0]{1,255})(?:/[^/\0]{1,255})?)\z',
    'x.perl.coerce_rules' => [
        'From_str::strip_slashes',
    ],
}, {}];

1;
# ABSTRACT:
