package Sah::Schema::pathname::unix::exists;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["pathname::unix" => {
    summary => 'Unix path name, must exist on filesystem',
    prefilters => [
        'Path::check_path_exists',
    ],
}];

1;
# ABSTRACT:
