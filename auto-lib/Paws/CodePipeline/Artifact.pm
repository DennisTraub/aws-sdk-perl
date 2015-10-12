package Paws::CodePipeline::Artifact;
  use Moose;
  has location => (is => 'ro', isa => 'Paws::CodePipeline::ArtifactLocation');
  has name => (is => 'ro', isa => 'Str');
  has revision => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::Artifact

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::Artifact object:

  $service_obj->Method(Att1 => { location => $value, ..., revision => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::Artifact object:

  $result = $service_obj->Method(...);
  $result->Att1->location

=head1 ATTRIBUTES

=head2 location => Paws::CodePipeline::ArtifactLocation

  

The location of an artifact.










=head2 name => Str

  

The artifact's name.










=head2 revision => Str

  

The artifact's revision ID. Depending on the type of object, this could
be a commit ID (GitHub) or a revision ID (Amazon S3).












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

