package Sah::Schema::dirname::default_curdir_abs;

use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ['dirname' => {
    summary => 'Directory name, default to current directory (absolutified)',
    description => <<'_',

Note: be careful when using this schema for actions that are destructive,
because a user can perform those actions without giving an argument (e.g. in a
`delete-files-in` script). It is safer to use this schema when performing a
non=destructive action (e.g. `ls`) and/or operate in dry-run mode by default.

_

    'x.perl.default_value_rules' => [
        'Path::curdir_abs',
    ],

    examples => [
    ],

}];

1;
# ABSTRACT:

=head1 SEE ALSO

L<Sah::Schema::dirname::default_curdir>
