use strict;
use warnings;
use Test::Requires 'Storable';
use Data::Encoder::Storable;
use Test::More;

subtest 'simple' => sub {
    my $encoder = Data::Encoder::Storable->new;
    ok my $data = $encoder->encode(['foo']);
    is_deeply $encoder->decode($data), ['foo'];

    done_testing;
};

done_testing;
