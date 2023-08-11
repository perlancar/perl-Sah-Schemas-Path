package Data::Sah::Filter::perl::Path::check_dir_exists;

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
        summary => 'Check that dir exists and is a directory (using -d)',
        might_fail => 1,
        description => <<'MARKDOWN',

This means that symlink is allowed if it points to a directory. The check fails if
directory does not exist or is not a directory.

MARKDOWN
    };
}

sub filter {
    my %args = @_;

    my $dt = $args{data_term};

    my $res = {};

    $res->{expr_filter} = join(
        "",
        "do { my \$tmp = $dt; -d \$tmp ? [undef,\$tmp] : [qq('\$tmp' does not exist or is not a directory), \$tmp] }",
    );

    $res;
}

1;
# ABSTRACT:

=for Pod::Coverage ^(meta|filter)$

=head1 DESCRIPTION

=cut
