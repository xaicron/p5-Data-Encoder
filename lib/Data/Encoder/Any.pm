package Data::Encoder::Any;

use strict;
use warnings;
use 5.008_001;
our $VERSION = '0.01';

sub new {
    my ($class, $args) = @_;
    $args ||= {};
    bless { %$args }, __PACKAGE__;
}

sub encode {
    my ($self, $stuff, @args) = @_;
    $self->{encoder}->($stuff, @args);
}

sub decode {
    my ($self, $stuff, @args) = @_;
    $self->{decoder}->($stuff, @args);
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
