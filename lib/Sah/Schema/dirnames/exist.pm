package Sah::Schema::dirnames::exist;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["array" => {
    summary => 'List of directory names, all must exist on filesystem',
    of => ["dirname::exists", {}],
}];

1;
# ABSTRACT:
