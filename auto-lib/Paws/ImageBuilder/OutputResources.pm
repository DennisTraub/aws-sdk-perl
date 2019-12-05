package Paws::ImageBuilder::OutputResources;
  use Moose;
  has Amis => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::Ami]', request_name => 'amis', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::OutputResources

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ImageBuilder::OutputResources object:

  $service_obj->Method(Att1 => { Amis => $value, ..., Amis => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ImageBuilder::OutputResources object:

  $result = $service_obj->Method(...);
  $result->Att1->Amis

=head1 DESCRIPTION

The resources produced by this image.

=head1 ATTRIBUTES


=head2 Amis => ArrayRef[L<Paws::ImageBuilder::Ami>]

  The EC2 AMIs created by this image.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

