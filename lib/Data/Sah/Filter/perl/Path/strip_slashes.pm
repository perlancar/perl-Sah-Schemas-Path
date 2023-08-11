package Data::Sah::Filter::perl::Path::strip_slashes;

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
        summary => 'Strip extra and trailing slash from a string',
    };
}

sub filter {
    my %args = @_;

    my $dt = $args{data_term};

    my $res = {};

    $res->{expr_filter} = join(
        "",
        "do { my \$tmp = $dt; \$tmp =~ s!/{2,}!/!g; \$tmp =~ s!/\\z!!g unless \$tmp =~ m!\\A/\\z!; \$tmp }",
    );

    $res;
}

1;
# ABSTRACT:

=for Pod::Coverage ^(meta|filter)$

=head1 DESCRIPTION

This filter rule removes extra slashes (e.g. "/foo//bar" becomes "/foo/bar") and
trailing slash.

Regarding trailing slash: functions might not expect a filename or dirname to
have a trailing slash (e.g. C<-d>, C<opendir()>, etc will not work if we add
slash to a directory name), but shell tab completion usually adds a trailing
slash. So this filter rule provides the convenience of stripping the trailing
slash for the functions.
