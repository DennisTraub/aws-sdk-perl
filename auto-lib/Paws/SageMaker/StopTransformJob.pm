
package Paws::SageMaker::StopTransformJob;
  use Moose;
  has TransformJobName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopTransformJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::StopTransformJob - Arguments for method StopTransformJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopTransformJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method StopTransformJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopTransformJob.

=head1 SYNOPSIS

    my $sagemaker = Paws->service('SageMaker');
    $sagemaker->StopTransformJob(
      TransformJobName => 'MyTransformJobName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sagemaker/StopTransformJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TransformJobName => Str

The name of the transform job to stop.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopTransformJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

