use strict;
use warnings;
use Test::Requires 'JSON';
use Data::Encoder::JSON;
use Test::More;

subtest 'simple' => sub {
    my $encoder = Data::Encoder::JSON->new;
    is $encoder->encode(['foo']), '["foo"]';

    done_testing;
};

subtest 'args' => sub {
    my $encoder = Data::Encoder::JSON->new({ pretty => 1 });
    like $encoder->encode(['foo']), qr|[\n\s+"foo"\n]|;

    done_testing;
};

done_testing;
