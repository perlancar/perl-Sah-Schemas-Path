package Sah::Schema::dirname::unix::not_exists;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["dirname::unix" => {
    summary => 'Unix directory name, must exist on filesystem',
    description => <<'MARKDOWN',

This is like the `dirname::unix` schema but with an extra check that the path
must not already exist.

MARKDOWN
    prefilters => [
        'Path::check_path_not_exists',
    ],
}];

1;
# ABSTRACT:
