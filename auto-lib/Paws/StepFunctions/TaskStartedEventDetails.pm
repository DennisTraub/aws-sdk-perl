package Paws::StepFunctions::TaskStartedEventDetails;
  use Moose;
  has Resource => (is => 'ro', isa => 'Str', request_name => 'resource', traits => ['NameInRequest'], required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::TaskStartedEventDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StepFunctions::TaskStartedEventDetails object:

  $service_obj->Method(Att1 => { Resource => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StepFunctions::TaskStartedEventDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Resource

=head1 DESCRIPTION

Contains details about the start of a task during an execution.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Resource => Str

  The service name of the resource in a task state.


=head2 B<REQUIRED> ResourceType => Str

  The action of the resource called by a task state.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

