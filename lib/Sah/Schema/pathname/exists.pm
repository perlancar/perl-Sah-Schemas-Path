package Sah::Schema::pathname::exists;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["pathname" => {
    summary => 'Path name, must exist on filesystem',
    prefilters => [
        'Path::check_path_exists',
    ],
}];

1;
# ABSTRACT:
