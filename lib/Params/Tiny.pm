package Params::Tiny;
use 5.008005;
use strict;
use warnings;

our $VERSION = "0.01";
use parent 'Hash::MultiValue';

sub param {
    my ($self, $key) = @_;

    return $self->get($key) unless wantarray;
    return $self->get_all($key);
}

1;
__END__

=encoding utf-8

=head1 NAME

Params::Tiny - It's new $module

=head1 SYNOPSIS

    use Params::Tiny;

=head1 DESCRIPTION

Params::Tiny is ...

=head1 LICENSE

Copyright (C) Masayuki Matsuki.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

Masayuki Matsuki E<lt>y.songmu@gmail.comE<gt>

=cut

