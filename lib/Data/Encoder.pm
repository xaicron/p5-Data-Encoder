package Data::Encoder;

use strict;
use warnings;
use 5.008_001;
our $VERSION = '0.01';

sub load {
    my ($class, $klass, $args) = @_;
    $klass = _load_class($klass, __PACKAGE__);
    return $klass->new($args);
}

# code taken from Tiffany
my %loaded;
sub _load_class {
    my ( $class, $prefix ) = @_;

    if ($prefix) {
        unless ( $class =~ s/^\+// || $class =~ /^$prefix/ ) {
            $class = "$prefix\::$class";
        }
    }

    return $class if $loaded{$class}++;

    my $file = $class;
    $file =~ s!::!/!g;
    require "$file.pm";    ## no critic

    return $class;
}

1;
__END__

=encoding utf-8

=for stopwords

=head1 NAME

Data::Encoder - Generic interface for perl encoder or serializer

=head1 SYNOPSIS

  use Data::Encoder;

  my $encoder = Data::Encoder->('JSON');
  my $json = $encoder->encode(['foo']);
  my $data = $encoder->decode($json);

=head1 DESCRIPTION

Data::Encoder is generic interface for perl encoder or serializer

THIS MODULE IS IN ITS BETA QUALITY. THE API IS STOLEN FROM TILT BUT MAY CHANGE IN THE FUTURE.

=head1 METHOD

=over

=item new($class, \%args)

=head1 AUTHOR

xaicron E<lt>xaicron {at} cpan.orgE<gt>

=head1 COPYRIGHT

Copyright 2010 - xaicron

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

=cut
