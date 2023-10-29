package Data::Sah::Value::perl::Path::curdir_abs;

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
        summary => 'Current directory, absolutified',
        description => <<'MARKDOWN',

MARKDOWN
        args => {
        },
    };
}

sub value {
    my %cargs = @_;

    my $gen_args = $cargs{args} // {};
    my $res = {};

    $res->{modules}{"Cwd"} //= 0;

    $res->{expr_value} = join(
        '',
        'Cwd::getcwd()',
    );

    $res;
}

1;
# ABSTRACT:

=for Pod::Coverage ^(meta|value)$

=head1 DESCRIPTION
