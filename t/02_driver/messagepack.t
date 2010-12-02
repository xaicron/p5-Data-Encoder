use strict;
use warnings;
use Test::Requires 'Data::MessagePack';
use Data::Encoder::MessagePack;
use Test::More;

subtest 'simple' => sub {
    my $encoder = Data::Encoder::MessagePack->new;
    ok my $data = $encoder->encode(['foo']);
    is_deeply $encoder->deocde($data), ['foo'];

    done_testing;
};

done_testing;
