package Sah::Schema::pathname::unix::not_exists;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["pathname::unix" => {
    summary => 'Unix path name, must not already exist on filesystem',
    prefilters => [
        'Path::check_path_not_exists',
    ],
}];

1;
# ABSTRACT:
