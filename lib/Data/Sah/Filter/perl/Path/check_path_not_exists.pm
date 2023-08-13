package Data::Sah::Filter::perl::Path::check_path_not_exists;

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
        summary => 'Check that path does not exist (using -e)',
        might_fail => 1,
        description => <<'MARKDOWN',

This means that for a symlink, the target is checked and not the symlink itself.

MARKDOWN
    };
}

sub filter {
    my %args = @_;

    my $dt = $args{data_term};

    my $res = {};

    $res->{expr_filter} = join(
        "",
        "do { my \$tmp = $dt; -e \$tmp ? [qq('\$tmp' must not already exist), \$tmp] : [undef,\$tmp] }",
    );

    $res;
}

1;
# ABSTRACT:

=for Pod::Coverage ^(meta|filter)$

=head1 DESCRIPTION

=cut
