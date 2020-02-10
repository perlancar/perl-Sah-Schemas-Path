package Data::Sah::Filter::perl::Path::expand_tilde_when_on_unix;

# AUTHOR
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

use Perl::osnames;

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
        "do { my \$tmp = $dt; if (\$^O =~ qr/$Perl::osnames::RE_OS_IS_UNIX/) { \$tmp =~ s!\\A~([^/]*)!my \@pw = length(\$1) ? getpwnam(\$1) : getpwuid(\$>); \@pw ? \$pw[7]: \"~\$1\"!e; } \$tmp }",
    );

    $res;
}

1;
# ABSTRACT:

=for Pod::Coverage ^(meta|filter)$

=head1 DESCRIPTION

This filter rule is exactly like
L<Path::expand_tilde|Data::Sah::Filter::perl::Path::expand_tilde> rule, except
that expansion is only done when running on Unix platforms.
