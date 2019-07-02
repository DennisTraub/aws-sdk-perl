
package Paws::Pinpoint::DeleteApnsVoipChannel;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApnsVoipChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/channels/apns_voip');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::APNSVoipChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::DeleteApnsVoipChannel - Arguments for method DeleteApnsVoipChannel on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteApnsVoipChannel on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method DeleteApnsVoipChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteApnsVoipChannel.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $APNSVoipChannelResponse = $pinpoint->DeleteApnsVoipChannel(
      ApplicationId => 'My__string',

    );

    # Results:
    my $ApplicationId = $APNSVoipChannelResponse->ApplicationId;
    my $CreationDate  = $APNSVoipChannelResponse->CreationDate;
    my $DefaultAuthenticationMethod =
      $APNSVoipChannelResponse->DefaultAuthenticationMethod;
    my $Enabled          = $APNSVoipChannelResponse->Enabled;
    my $HasCredential    = $APNSVoipChannelResponse->HasCredential;
    my $HasTokenKey      = $APNSVoipChannelResponse->HasTokenKey;
    my $Id               = $APNSVoipChannelResponse->Id;
    my $IsArchived       = $APNSVoipChannelResponse->IsArchived;
    my $LastModifiedBy   = $APNSVoipChannelResponse->LastModifiedBy;
    my $LastModifiedDate = $APNSVoipChannelResponse->LastModifiedDate;
    my $Platform         = $APNSVoipChannelResponse->Platform;
    my $Version          = $APNSVoipChannelResponse->Version;

    # Returns a L<Paws::Pinpoint::APNSVoipChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/DeleteApnsVoipChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application. This identifier is displayed
as the B<Project ID> on the Amazon Pinpoint console.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteApnsVoipChannel in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

