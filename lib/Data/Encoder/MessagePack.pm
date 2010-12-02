package Data::Encoder::MessagePack;

use strict;
use warnings;
use Data::MessagePack;
use 5.008_001;
our $VERSION = '0.01';

sub new {
    my ($class) = @_;
    bless \my $obj, __PACKAGE__;
}

sub encode {
    my ($self, $stuff, @args) = @_;
    Data::MessagePack->pack($stuff);
}

sub deocde {
    my ($self, $stuff, @args) = @_;
    Data::MessagePack->unpack($stuff);
}

1;
__END__

=encoding utf-8

=for stopwords

=head1 NAME

Data::Encoder -

=head1 SYNOPSIS

  use Data::Encoder;

=head1 DESCRIPTION

Data::Encoder is

=head1 AUTHOR

xaicron E<lt>xaicron {at} cpan.orgE<gt>

=head1 COPYRIGHT

Copyright 2010 - xaicron

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

=cut
