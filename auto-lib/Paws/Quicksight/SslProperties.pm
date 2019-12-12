package Paws::Quicksight::SslProperties;
  use Moose;
  has DisableSsl => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::SslProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::SslProperties object:

  $service_obj->Method(Att1 => { DisableSsl => $value, ..., DisableSsl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::SslProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->DisableSsl

=head1 DESCRIPTION

Secure Socket Layer (SSL) properties that apply when QuickSight
connects to your underlying data source.

=head1 ATTRIBUTES


=head2 DisableSsl => Bool

  A Boolean option to control whether SSL should be disabled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

