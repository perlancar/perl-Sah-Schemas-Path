package Data::Sah::Filter::perl::Path::check_file_exists;

use 5.010001;
use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

sub meta {
    +{
        v => 1,
        target_type => 'str',
        summary => 'Check that file exists and is a regular file (using -f)',
        might_fail => 1,
        description => <<'MARKDOWN',

This means that symlink is allowed if it points to a regular file. The check fails if
file does not exist or is a non-regular file type (e.g. directory, Unix socket, etc).

MARKDOWN
    };
}

sub filter {
    my %args = @_;

    my $dt = $args{data_term};

    my $res = {};

    $res->{expr_filter} = join(
        "",
        "do { my \$tmp = $dt; -f \$tmp ? [undef,\$tmp] : [qq('\$tmp' does not exist or is not a regular file), \$tmp] }",
    );

    $res;
}

1;
# ABSTRACT:

=for Pod::Coverage ^(meta|filter)$

=head1 DESCRIPTION

=cut
