# Generated by default/object.tt
package Paws::IoTSiteWise::AssetModelProperty;
  use Moose;
  has DataType => (is => 'ro', isa => 'Str', request_name => 'dataType', traits => ['NameInRequest'], required => 1);
  has DataTypeSpec => (is => 'ro', isa => 'Str', request_name => 'dataTypeSpec', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Type => (is => 'ro', isa => 'Paws::IoTSiteWise::PropertyType', request_name => 'type', traits => ['NameInRequest'], required => 1);
  has Unit => (is => 'ro', isa => 'Str', request_name => 'unit', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::AssetModelProperty

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTSiteWise::AssetModelProperty object:

  $service_obj->Method(Att1 => { DataType => $value, ..., Unit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTSiteWise::AssetModelProperty object:

  $result = $service_obj->Method(...);
  $result->Att1->DataType

=head1 DESCRIPTION

Contains information about an asset model property.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataType => Str

The data type of the asset model property.


=head2 DataTypeSpec => Str

The data type of the structure for this property. This parameter exists
on properties that have the C<STRUCT> data type.


=head2 Id => Str

The ID of the asset model property.


=head2 B<REQUIRED> Name => Str

The name of the asset model property.


=head2 B<REQUIRED> Type => L<Paws::IoTSiteWise::PropertyType>

The property type (see C<PropertyType>).


=head2 Unit => Str

The unit of the asset model property, such as C<Newtons> or C<RPM>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

