# Generated by default/object.tt
package Paws::IoTSiteWise::Image;
  use Moose;
  has File => (is => 'ro', isa => 'Paws::IoTSiteWise::ImageFile', request_name => 'file', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::Image

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTSiteWise::Image object:

  $service_obj->Method(Att1 => { File => $value, ..., Id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTSiteWise::Image object:

  $result = $service_obj->Method(...);
  $result->Att1->File

=head1 DESCRIPTION

Contains an image that is one of the following:

=over

=item *

An image file. Choose this option to upload a new image.

=item *

The ID of an existing image. Choose this option to keep an existing
image.

=back


=head1 ATTRIBUTES


=head2 File => L<Paws::IoTSiteWise::ImageFile>




=head2 Id => Str

The ID of an existing image. Specify this parameter to keep an existing
image.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

