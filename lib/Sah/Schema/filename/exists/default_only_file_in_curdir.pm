package Sah::Schema::filename::exists::default_only_file_in_curdir;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["filename::exists" => {
    summary => 'File name, must exist on the filesystem, defaults to only file in current directory (if there is one)',
    description => <<'MARKDOWN',

This is like the `filename::exists` schema but with a default value of "only
file in the current directory". That is, if the current directory has a single
plain file and nothing else.

Note: be careful when using this schema for actions that are destructive,
because a user can perform those actions without giving an argument (e.g. in a
`delete-file` script). It is safer to use this schema when performing a
non-destructive action (e.g. `checksum`) and/or operate in dry-run mode by
default.

MARKDOWN
    'x.perl.default_value_rules' => ['Path::only_file_in_curdir'],
}];

1;
# ABSTRACT:
