# Generated by default/object.tt
package Paws::IoTSiteWise::Greengrass;
  use Moose;
  has GroupArn => (is => 'ro', isa => 'Str', request_name => 'groupArn', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::Greengrass

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTSiteWise::Greengrass object:

  $service_obj->Method(Att1 => { GroupArn => $value, ..., GroupArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTSiteWise::Greengrass object:

  $result = $service_obj->Method(...);
  $result->Att1->GroupArn

=head1 DESCRIPTION

Contains details for a gateway that runs on AWS IoT Greengrass. To
create a gateway that runs on AWS IoT Greengrass, you must add the IoT
SiteWise connector to a Greengrass group and deploy it. Your Greengrass
group must also have permissions to upload data to AWS IoT SiteWise.
For more information, see Ingesting data using a gateway
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/gateway-connector.html)
in the I<AWS IoT SiteWise User Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the Greengrass group. For more information about how to find a
group's ARN, see ListGroups
(https://docs.aws.amazon.com/greengrass/latest/apireference/listgroups-get.html)
and GetGroup
(https://docs.aws.amazon.com/greengrass/latest/apireference/getgroup-get.html)
in the I<AWS IoT Greengrass API Reference>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

