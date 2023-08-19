package Sah::Schema::filename::unix::not_exists;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["filename::unix" => {
    summary => 'Unix file name, must not already exist on filesystem',
    description => <<'MARKDOWN',

This is like the `filename::unix` schema but with an extra check that the path
must not already exist.

MARKDOWN
    prefilters => [
        'Path::check_path_not_exists',
    ],
}];

1;
# ABSTRACT:
