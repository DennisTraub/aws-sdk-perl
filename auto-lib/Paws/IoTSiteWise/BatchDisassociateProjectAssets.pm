
package Paws::IoTSiteWise::BatchDisassociateProjectAssets;
  use Moose;
  has AssetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'assetIds', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ProjectId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDisassociateProjectAssets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{projectId}/assets/disassociate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::BatchDisassociateProjectAssetsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::BatchDisassociateProjectAssets - Arguments for method BatchDisassociateProjectAssets on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDisassociateProjectAssets on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method BatchDisassociateProjectAssets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDisassociateProjectAssets.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $BatchDisassociateProjectAssetsResponse =
      $iotsitewise->BatchDisassociateProjectAssets(
      AssetIds => [
        'MyID', ...    # min: 36, max: 36
      ],
      ProjectId   => 'MyID',
      ClientToken => 'MyClientToken',    # OPTIONAL
      );

    # Results:
    my $Errors = $BatchDisassociateProjectAssetsResponse->Errors;

# Returns a L<Paws::IoTSiteWise::BatchDisassociateProjectAssetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/BatchDisassociateProjectAssets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetIds => ArrayRef[Str|Undef]

The IDs of the assets to be disassociated from the project.



=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 B<REQUIRED> ProjectId => Str

The ID of the project from which to disassociate the assets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDisassociateProjectAssets in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

