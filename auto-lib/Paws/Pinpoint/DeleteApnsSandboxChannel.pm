
package Paws::Pinpoint::DeleteApnsSandboxChannel;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApnsSandboxChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/channels/apns_sandbox');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::APNSSandboxChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::DeleteApnsSandboxChannel - Arguments for method DeleteApnsSandboxChannel on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteApnsSandboxChannel on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method DeleteApnsSandboxChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteApnsSandboxChannel.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $APNSSandboxChannelResponse = $pinpoint->DeleteApnsSandboxChannel(
      ApplicationId => 'My__string',

    );

    # Results:
    my $ApplicationId = $APNSSandboxChannelResponse->ApplicationId;
    my $CreationDate  = $APNSSandboxChannelResponse->CreationDate;
    my $DefaultAuthenticationMethod =
      $APNSSandboxChannelResponse->DefaultAuthenticationMethod;
    my $Enabled          = $APNSSandboxChannelResponse->Enabled;
    my $HasCredential    = $APNSSandboxChannelResponse->HasCredential;
    my $HasTokenKey      = $APNSSandboxChannelResponse->HasTokenKey;
    my $Id               = $APNSSandboxChannelResponse->Id;
    my $IsArchived       = $APNSSandboxChannelResponse->IsArchived;
    my $LastModifiedBy   = $APNSSandboxChannelResponse->LastModifiedBy;
    my $LastModifiedDate = $APNSSandboxChannelResponse->LastModifiedDate;
    my $Platform         = $APNSSandboxChannelResponse->Platform;
    my $Version          = $APNSSandboxChannelResponse->Version;

    # Returns a L<Paws::Pinpoint::APNSSandboxChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/DeleteApnsSandboxChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application. This identifier is displayed
as the B<Project ID> on the Amazon Pinpoint console.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteApnsSandboxChannel in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

