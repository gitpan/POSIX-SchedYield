use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
                                 module_name         => 'POSIX::SchedYield',
                                 license             => 'perl',
                                 dist_author         => 'Marc Beyer <japh@tirwhan.org>',
                                 dist_version_from   => 'lib/POSIX/SchedYield.pm',
                                 xs_files            => { 'SchedYield.xs' => 'lib/POSIX/SchedYield.xs' },
                                 include_dirs        => ['.'],
                                 requires => {
                                              'Test::More' => 0,
                                              'version'    => 0,
                                          },
                                 add_to_cleanup      => [ 'POSIX-SchedYield-*' ],
                             );

$builder->create_build_script();
