package Sah::Schema::dirname::exists;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["dirname" => {
    summary => 'Directory name, must exist on filesystem',
    description => <<'MARKDOWN',

This is like the `dirname` schema but with an extra check that the path must
already exist.

MARKDOWN
    prefilters => [
        'Path::check_dir_exists',
    ],
}];

1;
# ABSTRACT:
