package Sah::Schema::dirname::exists;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["dirname" => {
    summary => 'Directory name, must exist on filesystem',
    prefilters => [
        'Path::check_dir_exists',
    ],
}];

1;
# ABSTRACT:
