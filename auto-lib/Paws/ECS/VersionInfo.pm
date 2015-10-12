package Paws::ECS::VersionInfo;
  use Moose;
  has agentHash => (is => 'ro', isa => 'Str');
  has agentVersion => (is => 'ro', isa => 'Str');
  has dockerVersion => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::VersionInfo

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::VersionInfo object:

  $service_obj->Method(Att1 => { agentHash => $value, ..., dockerVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::VersionInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->agentHash

=head1 ATTRIBUTES

=head2 agentHash => Str

  

The Git commit hash for the Amazon ECS container agent build on the
amazon-ecs-agent GitHub repository.










=head2 agentVersion => Str

  

The version number of the Amazon ECS container agent.










=head2 dockerVersion => Str

  

The Docker version running on the container instance.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

