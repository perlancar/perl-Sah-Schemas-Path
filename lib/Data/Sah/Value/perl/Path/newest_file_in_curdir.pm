package Data::Sah::Value::perl::Path::newest_file_in_curdir;

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
        summary => 'Newest file in current directory',
        description => <<'MARKDOWN',

This default value rule will return filename if there is a plain file in the
current directory. See <pm:File::Util::Sort>'s `newest`.

MARKDOWN
        args => {
        },
    };
}

sub value {
    my %cargs = @_;

    my $gen_args = $cargs{args} // {};
    my $res = {};

    $res->{modules}{"File::Util::Sort"} //= 0;

    $res->{expr_value} = join(
        '',
        'do { ', (
            'my $res = File::Util::Sort::newest(type=>"file"); ',
            'warn "Cannot find newest file: $res->[0] - $res->[1]" unless $res->[0] == 200; ',
            '$res->[2][0] ',
        ),
        '}',
    );

    $res;
}

1;
# ABSTRACT:

=for Pod::Coverage ^(meta|value)$

=head1 DESCRIPTION
