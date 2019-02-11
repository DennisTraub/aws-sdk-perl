
package Paws::CloudFront::GetPublicKey;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPublicKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2018-11-05/public-key/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::GetPublicKeyResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetPublicKey - Arguments for method GetPublicKey on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPublicKey2018_11_05 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method GetPublicKey2018_11_05.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPublicKey2018_11_05.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $GetPublicKeyResult = $cloudfront->GetPublicKey(
      Id => 'Mystring',

    );

    # Results:
    my $ETag      = $GetPublicKeyResult->ETag;
    my $PublicKey = $GetPublicKeyResult->PublicKey;

    # Returns a L<Paws::CloudFront::GetPublicKeyResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/GetPublicKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

Request the ID for the public key.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPublicKey2018_11_05 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

