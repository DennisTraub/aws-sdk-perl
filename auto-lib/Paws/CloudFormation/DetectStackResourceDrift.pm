
package Paws::CloudFormation::DetectStackResourceDrift;
  use Moose;
  has LogicalResourceId => (is => 'ro', isa => 'Str', required => 1);
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetectStackResourceDrift');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::DetectStackResourceDriftOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DetectStackResourceDriftResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DetectStackResourceDrift - Arguments for method DetectStackResourceDrift on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetectStackResourceDrift on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method DetectStackResourceDrift.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetectStackResourceDrift.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $DetectStackResourceDriftOutput =
      $cloudformation->DetectStackResourceDrift(
      LogicalResourceId => 'MyLogicalResourceId',
      StackName         => 'MyStackNameOrId',

      );

    # Results:
    my $StackResourceDrift =
      $DetectStackResourceDriftOutput->StackResourceDrift;

    # Returns a L<Paws::CloudFormation::DetectStackResourceDriftOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/DetectStackResourceDrift>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogicalResourceId => Str

The logical name of the resource for which to return drift information.



=head2 B<REQUIRED> StackName => Str

The name of the stack to which the resource belongs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetectStackResourceDrift in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

