package Paws::Inspector::FindingsFilter;
  use Moose;
  has attributes => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Attribute]');
  has ruleNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has rulesPackageArns => (is => 'ro', isa => 'ArrayRef[Str]');
  has severities => (is => 'ro', isa => 'ArrayRef[Str]');
  has userAttributes => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Attribute]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::FindingsFilter

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::FindingsFilter object:

  $service_obj->Method(Att1 => { attributes => $value, ..., userAttributes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::FindingsFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->attributes

=head1 ATTRIBUTES

=head2 attributes => ArrayRef[Paws::Inspector::Attribute]

  

For a record to match a filter, the value specified for this data type
property must be the exact match of the value of the B<attributes>
property of the Finding data type.










=head2 ruleNames => ArrayRef[Str]

  

For a record to match a filter, the value specified for this data type
property must be the exact match of the value of the B<ruleName>
property of the Finding data type.










=head2 rulesPackageArns => ArrayRef[Str]

  

For a record to match a filter, the value specified for this data type
property must be the exact match of the value of the B<rulesPackageArn>
property of the Finding data type.










=head2 severities => ArrayRef[Str]

  

For a record to match a filter, the value specified for this data type
property must be the exact match of the value of the B<severity>
property of the Finding data type.










=head2 userAttributes => ArrayRef[Paws::Inspector::Attribute]

  

For a record to match a filter, the value specified for this data type
property must be the exact match of the value of the B<userAttributes>
property of the Finding data type.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

