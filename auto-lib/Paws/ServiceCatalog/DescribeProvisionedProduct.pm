
package Paws::ServiceCatalog::DescribeProvisionedProduct;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeProvisionedProduct');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::DescribeProvisionedProductOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeProvisionedProduct - Arguments for method DescribeProvisionedProduct on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeProvisionedProduct on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method DescribeProvisionedProduct.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeProvisionedProduct.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $DescribeProvisionedProductOutput =
      $servicecatalog->DescribeProvisionedProduct(
      AcceptLanguage => 'MyAcceptLanguage',            # OPTIONAL
      Id             => 'MyId',                        # OPTIONAL
      Name           => 'MyProvisionedProductName',    # OPTIONAL
      );

    # Results:
    my $CloudWatchDashboards =
      $DescribeProvisionedProductOutput->CloudWatchDashboards;
    my $ProvisionedProductDetail =
      $DescribeProvisionedProductOutput->ProvisionedProductDetail;

   # Returns a L<Paws::ServiceCatalog::DescribeProvisionedProductOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/DescribeProvisionedProduct>

=head1 ATTRIBUTES


=head2 AcceptLanguage => Str

The language code.

=over

=item *

C<en> - English (default)

=item *

C<jp> - Japanese

=item *

C<zh> - Chinese

=back




=head2 Id => Str

The provisioned product identifier. You must provide the name or ID,
but not both.

If you do not provide a name or ID, or you provide both name and ID, an
C<InvalidParametersException> will occur.



=head2 Name => Str

The name of the provisioned product. You must provide the name or ID,
but not both.

If you do not provide a name or ID, or you provide both name and ID, an
C<InvalidParametersException> will occur.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeProvisionedProduct in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

