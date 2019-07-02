
package Paws::Pinpoint::GetSegment;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);
  has SegmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'segment-id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSegment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/segments/{segment-id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::SegmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetSegment - Arguments for method GetSegment on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSegment on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method GetSegment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSegment.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $SegmentResponse = $pinpoint->GetSegment(
      ApplicationId => 'My__string',
      SegmentId     => 'My__string',

    );

    # Results:
    my $ApplicationId    = $SegmentResponse->ApplicationId;
    my $Arn              = $SegmentResponse->Arn;
    my $CreationDate     = $SegmentResponse->CreationDate;
    my $Dimensions       = $SegmentResponse->Dimensions;
    my $Id               = $SegmentResponse->Id;
    my $ImportDefinition = $SegmentResponse->ImportDefinition;
    my $LastModifiedDate = $SegmentResponse->LastModifiedDate;
    my $Name             = $SegmentResponse->Name;
    my $SegmentGroups    = $SegmentResponse->SegmentGroups;
    my $SegmentType      = $SegmentResponse->SegmentType;
    my $Tags             = $SegmentResponse->Tags;
    my $Version          = $SegmentResponse->Version;

    # Returns a L<Paws::Pinpoint::SegmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/GetSegment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application. This identifier is displayed
as the B<Project ID> on the Amazon Pinpoint console.



=head2 B<REQUIRED> SegmentId => Str

The unique identifier for the segment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSegment in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

