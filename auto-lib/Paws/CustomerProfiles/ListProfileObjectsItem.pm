# Generated by default/object.tt
package Paws::CustomerProfiles::ListProfileObjectsItem;
  use Moose;
  has Object => (is => 'ro', isa => 'Str');
  has ObjectTypeName => (is => 'ro', isa => 'Str');
  has ProfileObjectUniqueKey => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::ListProfileObjectsItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CustomerProfiles::ListProfileObjectsItem object:

  $service_obj->Method(Att1 => { Object => $value, ..., ProfileObjectUniqueKey => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CustomerProfiles::ListProfileObjectsItem object:

  $result = $service_obj->Method(...);
  $result->Att1->Object

=head1 DESCRIPTION

A ProfileObject in a list of ProfileObjects.

=head1 ATTRIBUTES


=head2 Object => Str

A JSON representation of a ProfileObject that belongs to a profile.


=head2 ObjectTypeName => Str

Specifies the kind of object being added to a profile, such as
"Salesforce-Account."


=head2 ProfileObjectUniqueKey => Str

The unique identifier of the ProfileObject generated by the service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

