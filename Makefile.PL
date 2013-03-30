use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'DHX::Tabbar',
    AUTHOR           => q{Lucas Tiago de Moraes <lucastiagodemoraes@gmail.com>},
    VERSION_FROM     => 'lib/DHX/Tabbar.pm',
    ABSTRACT_FROM    => 'lib/DHX/Tabbar.pm',
    LICENSE          => 'Artistic_2_0',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
        'Moose' => 0,
        'CAM::XML' => 0
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
        'Moose' => 0,
        'CAM::XML' => 0
    },
    PREREQ_PM => {
        'Moose' => 0,
        'CAM::XML' => 0
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'DHX-Tabbar-*' },
);
