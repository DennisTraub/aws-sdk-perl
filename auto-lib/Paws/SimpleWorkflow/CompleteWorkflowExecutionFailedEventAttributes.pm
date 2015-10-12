package Paws::SimpleWorkflow::CompleteWorkflowExecutionFailedEventAttributes;
  use Moose;
  has cause => (is => 'ro', isa => 'Str', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::CompleteWorkflowExecutionFailedEventAttributes

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::CompleteWorkflowExecutionFailedEventAttributes object:

  $service_obj->Method(Att1 => { cause => $value, ..., decisionTaskCompletedEventId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::CompleteWorkflowExecutionFailedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->cause

=head1 ATTRIBUTES

=head2 B<REQUIRED> cause => Str

  

The cause of the failure. This information is generated by the system
and can be useful for diagnostic purposes.

If B<cause> is set to OPERATION_NOT_PERMITTED, the decision failed
because it lacked sufficient permissions. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows.










=head2 B<REQUIRED> decisionTaskCompletedEventId => Int

  

The ID of the C<DecisionTaskCompleted> event corresponding to the
decision task that resulted in the C<CompleteWorkflowExecution>
decision to complete this execution. This information can be useful for
diagnosing problems by tracing back the chain of events leading up to
this event.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

