package Sah::Schema::pathname::unix::exists;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["pathname::unix" => {
    summary => 'Unix path name, must exist on filesystem',
    description => <<'MARKDOWN',

This is like the `pathname::unix` schema but with an extra check that the path
must already exist.

MARKDOWN
    prefilters => [
        'Path::check_path_exists',
    ],
}];

1;
# ABSTRACT:
