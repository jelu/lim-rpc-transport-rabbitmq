#!perl -T

use Test::More tests => 2;

BEGIN {
    use_ok( 'Lim::RPC::Transport::RabbitMQ' ) || print "Bail out!\n";
    use_ok( 'Lim::RPC::Transport::Client::RabbitMQ' ) || print "Bail out!\n";
}

diag( "Testing Lim::RPC::Transport::RabbitMQ $Lim::RPC::Transport::RabbitMQ::VERSION, Perl $], $^X" );
