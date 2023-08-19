package Sah::Schema::filename::exists;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["filename" => {
    summary => 'File name, must exist on filesystem',
    description => <<'MARKDOWN',

This is like the `filename` schema but with an extra check that the path must
already exist.

MARKDOWN
    prefilters => [
        'Path::check_file_exists',
    ],
}];

1;
# ABSTRACT:
