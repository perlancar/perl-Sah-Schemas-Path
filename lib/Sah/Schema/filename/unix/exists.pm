package Sah::Schema::filename::unix::exists;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["filename::unix" => {
    summary => 'Unix file name, must exist on filesystem',
    prefilters => [
        'Path::check_file_exists',
    ],
}];

1;
# ABSTRACT:
