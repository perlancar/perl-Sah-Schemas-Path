package Data::Sah::Filter::perl::Path::expand_tilde;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

sub meta {
    +{
        v => 1,
        target_type => 'str',
        summary => "Expand tilde ('~' and '~USER' to user's home directory)",
    };
}

sub filter {
    my %args = @_;

    my $dt = $args{data_term};

    my $res = {};

    $res->{expr_filter} = join(
        "",
        "do { my \$tmp = $dt; \$tmp =~ s!\\A~([^/]*)!my \@pw = length(\$1) ? getpwnam(\$1) : getpwuid(\$>); \@pw ? \$pw[7]: \"~\$1\"!e; \$tmp }",
    );

    $res;
}

1;
# ABSTRACT:

=for Pod::Coverage ^(meta|filter)$

=head1 DESCRIPTION

This filter rule does tilde expansion (e.g. "~/foo" or "~budi/foo" to
"/home/budi/foo") normally performed by Unix shells like bash. Since these
tilde-containing paths might seep unexpanded beyond shells, this filter rule can
be quite convenient.
