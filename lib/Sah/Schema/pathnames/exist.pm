package Sah::Schema::pathnames::exist;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["array" => {
    summary => 'List of path names, all must exist on filesystem',
    of => ["pathname::exists", {}],
}];

1;
# ABSTRACT:
