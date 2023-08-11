package Sah::Schema::filenames::exist;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["array" => {
    summary => 'List of file names, all must exist on filesystem',
    of => ["filename::exists", {}],
}];

1;
# ABSTRACT:
