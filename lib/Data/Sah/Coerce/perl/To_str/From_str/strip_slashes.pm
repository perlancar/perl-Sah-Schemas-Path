package Data::Sah::Coerce::perl::To_str::From_str::strip_slashes;

# AUTHOR
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

sub meta {
    +{
        v => 4,
        summary => 'Strip extra and trailing slash from a string',
        prio => 50,
    };
}

sub coerce {
    my %args = @_;

    my $dt = $args{data_term};

    my $res = {};

    $res->{expr_match} = "1";
    $res->{expr_coerce} = join(
        "",
        "do { my \$tmp = $dt; \$tmp =~ s!/{2,}!/!g; \$tmp =~ s!/\\z!!g unless \$tmp =~ m!\\A/\\z!; \$tmp }",
    );

    $res;
}

1;
# ABSTRACT:

=for Pod::Coverage ^(meta|coerce)$

=head1 DESCRIPTION

Extra slashes: This coercion rule removes extra slashes ("/foo//bar" becomes
"/foo/bar").

Trailing slash: Functions might not expect a filename or dirname to have a
trailing slash (e.g. C<-d>, C<opendir()>, etc will not work if we add slash to a
directory name), but shell tab completion usually adds a trailing slash. So this
coercion rule provides the convenience of stripping the trailing slash for the
functions.
