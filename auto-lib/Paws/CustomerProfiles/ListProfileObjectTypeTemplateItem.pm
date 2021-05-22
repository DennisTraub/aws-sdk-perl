# Generated by default/object.tt
package Paws::CustomerProfiles::ListProfileObjectTypeTemplateItem;
  use Moose;
  has SourceName => (is => 'ro', isa => 'Str');
  has SourceObject => (is => 'ro', isa => 'Str');
  has TemplateId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::ListProfileObjectTypeTemplateItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CustomerProfiles::ListProfileObjectTypeTemplateItem object:

  $service_obj->Method(Att1 => { SourceName => $value, ..., TemplateId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CustomerProfiles::ListProfileObjectTypeTemplateItem object:

  $result = $service_obj->Method(...);
  $result->Att1->SourceName

=head1 DESCRIPTION

A ProfileObjectTypeTemplate in a list of ProfileObjectTypeTemplates.

=head1 ATTRIBUTES


=head2 SourceName => Str

The name of the source of the object template.


=head2 SourceObject => Str

The source of the object template.


=head2 TemplateId => Str

A unique identifier for the object template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

