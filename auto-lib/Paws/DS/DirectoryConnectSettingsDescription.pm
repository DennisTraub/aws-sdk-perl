package Paws::DS::DirectoryConnectSettingsDescription;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');
  has ConnectIps => (is => 'ro', isa => 'ArrayRef[Str]');
  has CustomerUserName => (is => 'ro', isa => 'Str');
  has SecurityGroupId => (is => 'ro', isa => 'Str');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has VpcId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::DirectoryConnectSettingsDescription

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DS::DirectoryConnectSettingsDescription object:

  $service_obj->Method(Att1 => { AvailabilityZones => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DS::DirectoryConnectSettingsDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZones

=head1 ATTRIBUTES

=head2 AvailabilityZones => ArrayRef[Str]

  

A list of the Availability Zones that the directory is in.










=head2 ConnectIps => ArrayRef[Str]

  

The IP addresses of the AD Connector servers.










=head2 CustomerUserName => Str

  

The username of the service account in the on-premises directory.










=head2 SecurityGroupId => Str

  

The security group identifier for the AD Connector directory.










=head2 SubnetIds => ArrayRef[Str]

  

A list of subnet identifiers in the VPC that the AD connector is in.










=head2 VpcId => Str

  

The identifier of the VPC that the AD Connector is in.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

