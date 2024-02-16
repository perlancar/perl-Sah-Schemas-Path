package Sah::SchemaBundle::Path;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

1;
# ABSTRACT: Schemas related to filesystem path

=head1 DESCRIPTION

This distribution includes several schemas you can use if you want to accept
filename/dirname/pathname.

Some general guidelines:

C<pathname> should be your first choice. But if you only want to accept
directory name, you can use C<dirname> instead. And if you only want to accept
file name and not directory, you can use C<filename>.

C<filename>, C<dirname>, C<pathname> are basically the same; they differ in the
completion they provide, i.e. C<dirname> offers completion of only directory
names.

Use C<filename::unix>, C<dirname::unix>, C<pathname::unix> only if you want to
accept Unix-style path. These schemas contain additional checks that are
specific to Unix filesystem.

Use C<filename::exists>, C<dirname::exists>, C<pathname::exists> if you want to
accept an existing path. For example in a utility/routine to rename or process
files. On the contrary, there are C<filename::not_exists>,
C<dirhname::not_exists>, and C<pathname::not_exists> if you want to accept
non-existing path, e.g. in a utility/routine to create a new file.
