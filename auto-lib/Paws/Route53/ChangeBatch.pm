package Paws::Route53::ChangeBatch;
  use Moose;
  has Changes => (is => 'ro', isa => 'ArrayRef[Paws::Route53::Change]', required => 1);
  has Comment => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ChangeBatch

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::ChangeBatch object:

  $service_obj->Method(Att1 => { Changes => $value, ..., Comment => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::ChangeBatch object:

  $result = $service_obj->Method(...);
  $result->Att1->Changes

=head1 ATTRIBUTES

=head2 B<REQUIRED> Changes => ArrayRef[Paws::Route53::Change]

  

A complex type that contains one C<Change> element for each resource
record set that you want to create or delete.










=head2 Comment => Str

  

I<Optional:> Any comments you want to include about a change batch
request.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

