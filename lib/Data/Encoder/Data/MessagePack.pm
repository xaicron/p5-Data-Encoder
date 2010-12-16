package Data::Encoder::Data::MessagePack;

use strict;
use warnings;
use Data::MessagePack;

sub new {
    my ($class) = @_;
    bless \my $obj, __PACKAGE__;
}

sub encode {
    my ($self, $stuff, @args) = @_;
    Data::MessagePack->pack($stuff);
}

sub decode {
    my ($self, $stuff, @args) = @_;
    Data::MessagePack->unpack($stuff);
}

1;
__END__

=encoding utf-8

=for stopwords

=head1 NAME

Data::Encoder::Data::MessagePack - Data::Encoder gateway for Data::MessagePack

=head1 SYNOPSIS

  use Data::Encoder;
  
  my $encoder = Data::Encoder->load('Data::MessagePack');
  my $packed = $encoder->encode([qw/foo bar/]);
  my $unpacked = $encoder->deocde($packed);

=head1 AUTHOR

xaicron E<lt>xaicron {at} cpan.orgE<gt>

=head1 COPYRIGHT

Copyright 2010 - xaicron

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

L<Data::MessagePack>

=cut
