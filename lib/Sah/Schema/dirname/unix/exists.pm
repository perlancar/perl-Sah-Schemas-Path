package Sah::Schema::dirname::unix::exists;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["dirname::unix" => {
    summary => 'Unix directory name, must exist on filesystem',
    prefilters => [
        'Path::check_dir_exists',
    ],
}];

1;
# ABSTRACT:
