
package Paws::SDB::DomainMetadata;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DomainMetadata');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SDB::DomainMetadataResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DomainMetadataResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SDB::DomainMetadata - Arguments for method DomainMetadata on L<Paws::SDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DomainMetadata on the
L<Amazon SimpleDB|Paws::SDB> service. Use the attributes of this class
as arguments to method DomainMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DomainMetadata.

=head1 SYNOPSIS

    my $sdb = Paws->service('SDB');
    my $DomainMetadataResult = $sdb->DomainMetadata(
      DomainName => 'MyString',

    );

    # Results:
    my $AttributeNameCount = $DomainMetadataResult->AttributeNameCount;
    my $AttributeNamesSizeBytes =
      $DomainMetadataResult->AttributeNamesSizeBytes;
    my $AttributeValueCount = $DomainMetadataResult->AttributeValueCount;
    my $AttributeValuesSizeBytes =
      $DomainMetadataResult->AttributeValuesSizeBytes;
    my $ItemCount          = $DomainMetadataResult->ItemCount;
    my $ItemNamesSizeBytes = $DomainMetadataResult->ItemNamesSizeBytes;
    my $Timestamp          = $DomainMetadataResult->Timestamp;

    # Returns a L<Paws::SDB::DomainMetadataResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sdb/DomainMetadata>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The name of the domain for which to display the metadata of.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DomainMetadata in L<Paws::SDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

