package Sah::Schema::filename::exists;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["filename" => {
    summary => 'File name, must exist on filesystem',
    prefilters => [
        'Path::check_file_exists',
    ],
}];

1;
# ABSTRACT:
