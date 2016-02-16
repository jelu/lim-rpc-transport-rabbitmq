use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Lim-RPC-Transport-RabbitMQ',
    AUTHOR              => q{Jerry Lundström <lundstrom.jerry@gmail.com>},
    VERSION_FROM        => 'lib/Lim/RPC/Transport/RabbitMQ.pm',
    ABSTRACT_FROM       => 'lib/Lim/RPC/Transport/RabbitMQ.pm',
    (! eval { ExtUtils::MakeMaker->VERSION(6.3002) } ? () :
        (LICENSE => 'perl')
    ),
    (eval { ExtUtils::MakeMaker->VERSION(6.5503) } ?
    (
        BUILD_REQUIRES => {
            'Test::More' => 0,
            'common::sense' => 3,
            'Lim' => 0.20,
            'AnyEvent' => 5,
            'AnyEvent::RabbitMQ' => 1.15,
            'HTTP::Request' => 5,
            'HTTP::Response' => 5,
            'HTTP::Status' => 5,
            'Log::Log4perl' => 1,
            'Scalar::Util' => 1,
        },
        PREREQ_PM => {
            'common::sense' => 3,
            'Lim' => 0.20,
            'AnyEvent' => 5,
            'AnyEvent::RabbitMQ' => 1.15,
            'HTTP::Request' => 5,
            'HTTP::Response' => 5,
            'HTTP::Status' => 5,
            'Log::Log4perl' => 1,
            'Scalar::Util' => 1,
        }
    ) : (
        PREREQ_PM => {
            'Test::More' => 0,
            'common::sense' => 3,
            'Lim' => 0.20,
            'AnyEvent' => 5,
            'AnyEvent::RabbitMQ' => 1.15,
            'HTTP::Request' => 5,
            'HTTP::Response' => 5,
            'HTTP::Status' => 5,
            'Log::Log4perl' => 1,
            'Scalar::Util' => 1,
        }
    )),
    (! eval { ExtUtils::MakeMaker->VERSION(6.46) } ? () :
        (META_ADD => {
            resources => {
                homepage   => 'https://github.com/jelu/lim-transport-rabbitmq/wiki',
                repository => 'https://github.com/jelu/lim-transport-rabbitmq',
                bugtracker => 'https://github.com/jelu/lim-transport-rabbitmq/issues',
            },
        })
    ),
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Lim-*' },
);
