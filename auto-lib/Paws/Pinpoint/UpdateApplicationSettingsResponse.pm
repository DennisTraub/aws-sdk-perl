package Paws::Pinpoint::UpdateApplicationSettingsResponse;
  use Moose;
  has ApplicationSettingsResource => (is => 'ro', isa => 'Paws::Pinpoint::ApplicationSettingsResource', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateApplicationSettingsResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::UpdateApplicationSettingsResponse object:

  $service_obj->Method(Att1 => { ApplicationSettingsResource => $value, ..., ApplicationSettingsResource => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::UpdateApplicationSettingsResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationSettingsResource

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationSettingsResource => L<Paws::Pinpoint::ApplicationSettingsResource>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

