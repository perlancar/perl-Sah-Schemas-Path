package Sah::Schema::filename::default_only_file_in_curdir;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["filename" => {
    summary => 'File name, defaults to only file in current directory (if there is one)',
    description => <<'MARKDOWN',

This is like the `filename` schema but with a default value of "only file in the
current directory". That is, if the current directory has a single plain file
and nothing else.

Difference with `filename::default_only_file_not_subdir_in_subdir` schema: the
other schema ignores subdirectories. Thus, if a directory only contains `file1`
and `subdir1`, then that other schema will return `file1` but this schema will
not return a default value.

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
