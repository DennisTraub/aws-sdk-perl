
package Paws::MarketplaceCommerceAnalytics::GenerateDataSet;
  use Moose;
  has dataSetPublicationDate => (is => 'ro', isa => 'Str', required => 1);
  has dataSetType => (is => 'ro', isa => 'Str', required => 1);
  has destinationS3BucketName => (is => 'ro', isa => 'Str', required => 1);
  has destinationS3Prefix => (is => 'ro', isa => 'Str');
  has roleNameArn => (is => 'ro', isa => 'Str', required => 1);
  has snsTopicArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateDataSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MarketplaceCommerceAnalytics::GenerateDataSetResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCommerceAnalytics::GenerateDataSet - Arguments for method GenerateDataSet on Paws::MarketplaceCommerceAnalytics

=head1 DESCRIPTION

This class represents the parameters used for calling the method GenerateDataSet on the 
AWS Marketplace Commerce Analytics service. Use the attributes of this class
as arguments to method GenerateDataSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GenerateDataSet.

As an example:

  $service_obj->GenerateDataSet(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> dataSetPublicationDate => Str

  

=head2 B<REQUIRED> dataSetType => Str

  

=head2 B<REQUIRED> destinationS3BucketName => Str

  

=head2 destinationS3Prefix => Str

  

=head2 B<REQUIRED> roleNameArn => Str

  

=head2 B<REQUIRED> snsTopicArn => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GenerateDataSet in L<Paws::MarketplaceCommerceAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

