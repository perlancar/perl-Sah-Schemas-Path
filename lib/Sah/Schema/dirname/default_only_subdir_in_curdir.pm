package Sah::Schema::dirname::default_only_subdir_in_curdir;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["dirname" => {
    summary => 'Directory name, defaults to only subdirectory in current directory (if there is one)',
    description => <<'MARKDOWN',

This is like the `dirname` schema but with a default value of "only subdirectory
in the current directory". That is, if the current directory has a single
subdirectory and nothing else.

Note: be careful when using this schema for actions that are destructive,
because a user can perform those actions without giving an argument (e.g. in a
`delete-files-in` script). It is safer to use this schema when performing a
non=destructive action (e.g. `ls`) and/or operate in dry-run mode by default.

MARKDOWN
    'x.perl.default_value_rules' => ['Path::only_subdir_in_curdir'],
}];

1;
# ABSTRACT:
