package Sah::Schema::dirname::not_exists;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["dirname" => {
    summary => 'Directory name, must not exist on filesystem',
    description => <<'MARKDOWN',

This is like the `dirname` schema but with an extra check that the path must
not already exist.

MARKDOWN
    prefilters => [
        'Path::check_path_not_exists',
    ],
}];

1;
# ABSTRACT:
