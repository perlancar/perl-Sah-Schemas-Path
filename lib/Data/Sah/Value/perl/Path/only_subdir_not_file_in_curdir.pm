package Data::Sah::Value::perl::Path::only_subdir_not_file_in_curdir;

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
        summary => 'Only subdirectory in current directory (plain files are ignored)',
        description => <<'MARKDOWN',

This default value rule will return filename if there is a single subdirectory
(and zero or more plain files) in the current directory and nothing else. See
<pm:File::Util::Test>'s `get_dir_only_subdir` with option `ignore_file` set to
1.

MARKDOWN
        args => {
        },
    };
}

sub value {
    my %cargs = @_;

    my $gen_args = $cargs{args} // {};
    my $res = {};

    $res->{modules}{"File::Util::Test"} //= 0.628;

    $res->{expr_value} = join(
        '',
        'File::Util::Test::get_dir_only_subdir({ignore_file=>1})',
    );

    $res;
}

1;
# ABSTRACT:

=for Pod::Coverage ^(meta|value)$

=head1 DESCRIPTION
