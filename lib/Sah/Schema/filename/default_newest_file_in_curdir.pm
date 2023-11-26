package Sah::Schema::filename::default_newest_file_in_curdir;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["filename" => {
    summary => 'File name, defaults to newest file in current directory (if there is one)',
    description => <<'MARKDOWN',

This is like the `filename` schema but with a default value of newest plain file
in the current directory. If current directory does not contain any file, no
default will be given.

Note: be careful when using this schema for actions that are destructive,
because a user can perform those actions without giving an argument (e.g. in a
`delete-file` script). It is safer to use this schema when performing a
non-destructive action (e.g. `checksum`) and/or operate in dry-run mode by
default.

MARKDOWN
    'x.perl.default_value_rules' => ['Path::newest_file_in_curdir'],
}];

1;
# ABSTRACT:
