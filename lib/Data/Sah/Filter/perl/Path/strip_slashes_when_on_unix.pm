package Data::Sah::Filter::perl::Path::strip_slashes_when_on_unix;

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
        summary => 'Strip extra and trailing slash from a string',
    };
}

sub filter {
    my %args = @_;

    my $dt = $args{data_term};

    my $res = {};

    $res->{expr_filter} = join(
        "",
        "do { my \$tmp = $dt; if (\$^O =~ qr/$Perl::osnames::RE_OS_IS_UNIX/) { \$tmp =~ s!/{2,}!/!g; \$tmp =~ s!/\\z!!g unless \$tmp =~ m!\\A/\\z!; } \$tmp }",
    );

    $res;
}

1;
# ABSTRACT:

=for Pod::Coverage ^(meta|filter)$

=head1 DESCRIPTION

This filter rule is exactly like
L<Path::strip_slashes|Data::Sah::Filter::perl::Path::strip_slashes> rule, except
that the stripping is only done when running on Unix platforms.
