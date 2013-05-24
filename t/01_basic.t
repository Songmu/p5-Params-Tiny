use strict;
use warnings;
use utf8;
use Test::More;

BEGIN { use_ok 'Params::Tiny' }
my $param = Params::Tiny->new(
    macopy   => 'mackee_w',
    macopy   => 'fugu',
    soh      => 335,
    hisaichi => 5518,
);
isa_ok $param, 'Params::Tiny';
my $m = $param->param('macopy');
is $m, 'fugu';
my @m = $param->param('macopy');
is_deeply [@m], [qw/mackee_w fugu/];
is $param->param('soh'), 335;

done_testing;
