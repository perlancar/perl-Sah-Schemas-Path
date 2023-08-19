package Sah::Schema::pathname::exists;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["pathname" => {
    summary => 'Path name, must exist on filesystem',
    description => <<'MARKDOWN',

This is like the `pathname` schema but with an extra check that the path must
already exist.

MARKDOWN
    prefilters => [
        'Path::check_path_exists',
    ],
}];

1;
# ABSTRACT:
