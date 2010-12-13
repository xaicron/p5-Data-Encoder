package Data::Encoder::JSON;

use strict;
use warnings;
use JSON;

sub new {
    my ($class, $args) = @_;
    my $json = JSON->new;

    $args ||= {};
    for my $method (keys %$args) {
        $json->$method(defined $args->{$method} ? $args->{$method} : ());
    }

    bless {
        json => $json,
    }, __PACKAGE__;
}

sub encode {
    my ($self, $stuff, @args) = @_;
    $self->{json}->encode($stuff, @args);
}

sub decode {
    my ($self, $stuff, @args) = @_;
    $self->{json}->decode($stuff, @args);
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
