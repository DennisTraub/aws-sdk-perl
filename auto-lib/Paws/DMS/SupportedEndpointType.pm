# Generated by default/object.tt
package Paws::DMS::SupportedEndpointType;
  use Moose;
  has EndpointType => (is => 'ro', isa => 'Str');
  has EngineDisplayName => (is => 'ro', isa => 'Str');
  has EngineName => (is => 'ro', isa => 'Str');
  has ReplicationInstanceEngineMinimumVersion => (is => 'ro', isa => 'Str');
  has SupportsCDC => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::SupportedEndpointType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::SupportedEndpointType object:

  $service_obj->Method(Att1 => { EndpointType => $value, ..., SupportsCDC => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::SupportedEndpointType object:

  $result = $service_obj->Method(...);
  $result->Att1->EndpointType

=head1 DESCRIPTION

Provides information about types of supported endpoints in response to
a request by the C<DescribeEndpointTypes> operation. This information
includes the type of endpoint, the database engine name, and whether
change data capture (CDC) is supported.

=head1 ATTRIBUTES


=head2 EndpointType => Str

The type of endpoint. Valid values are C<source> and C<target>.


=head2 EngineDisplayName => Str

The expanded name for the engine name. For example, if the
C<EngineName> parameter is "aurora," this value would be "Amazon Aurora
MySQL."


=head2 EngineName => Str

The database engine name. Valid values, depending on the EndpointType,
include C<"mysql">, C<"oracle">, C<"postgres">, C<"mariadb">,
C<"aurora">, C<"aurora-postgresql">, C<"redshift">, C<"s3">, C<"db2">,
C<"azuredb">, C<"sybase">, C<"dynamodb">, C<"mongodb">, C<"kinesis">,
C<"kafka">, C<"elasticsearch">, C<"documentdb">, C<"sqlserver">, and
C<"neptune">.


=head2 ReplicationInstanceEngineMinimumVersion => Str

The earliest AWS DMS engine version that supports this endpoint engine.
Note that endpoint engines released with AWS DMS versions earlier than
3.1.1 do not return a value for this parameter.


=head2 SupportsCDC => Bool

Indicates if Change Data Capture (CDC) is supported.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

