package Paws::AppSync::SyncConfig;
  use Moose;
  has ConflictDetection => (is => 'ro', isa => 'Str', request_name => 'conflictDetection', traits => ['NameInRequest']);
  has ConflictHandler => (is => 'ro', isa => 'Str', request_name => 'conflictHandler', traits => ['NameInRequest']);
  has LambdaConflictHandlerConfig => (is => 'ro', isa => 'Paws::AppSync::LambdaConflictHandlerConfig', request_name => 'lambdaConflictHandlerConfig', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::SyncConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::SyncConfig object:

  $service_obj->Method(Att1 => { ConflictDetection => $value, ..., LambdaConflictHandlerConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::SyncConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->ConflictDetection

=head1 DESCRIPTION

Describes a Sync configuration for a resolver.

Contains information on which Conflict Detection as well as Resolution
strategy should be performed when the resolver is invoked.

=head1 ATTRIBUTES


=head2 ConflictDetection => Str

  The Conflict Detection strategy to use.

=over

=item *

B<VERSION>: Detect conflicts based on object versions for this
resolver.

=item *

B<NONE>: Do not detect conflicts when executing this resolver.

=back



=head2 ConflictHandler => Str

  The Conflict Resolution strategy to perform in the event of a conflict.

=over

=item *

B<OPTIMISTIC_CONCURRENCY>: Resolve conflicts by rejecting mutations
when versions do not match the latest version at the server.

=item *

B<AUTOMERGE>: Resolve conflicts with the Automerge conflict resolution
strategy.

=item *

B<LAMBDA>: Resolve conflicts with a Lambda function supplied in the
LambdaConflictHandlerConfig.

=back



=head2 LambdaConflictHandlerConfig => L<Paws::AppSync::LambdaConflictHandlerConfig>

  The C<LambdaConflictHandlerConfig> when configuring LAMBDA as the
Conflict Handler.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

