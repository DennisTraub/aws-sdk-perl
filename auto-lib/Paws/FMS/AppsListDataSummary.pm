# Generated by default/object.tt
package Paws::FMS::AppsListDataSummary;
  use Moose;
  has AppsList => (is => 'ro', isa => 'ArrayRef[Paws::FMS::App]');
  has ListArn => (is => 'ro', isa => 'Str');
  has ListId => (is => 'ro', isa => 'Str');
  has ListName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::AppsListDataSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FMS::AppsListDataSummary object:

  $service_obj->Method(Att1 => { AppsList => $value, ..., ListName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FMS::AppsListDataSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->AppsList

=head1 DESCRIPTION

Details of the AWS Firewall Manager applications list.

=head1 ATTRIBUTES


=head2 AppsList => ArrayRef[L<Paws::FMS::App>]

An array of C<App> objects in the AWS Firewall Manager applications
list.


=head2 ListArn => Str

The Amazon Resource Name (ARN) of the applications list.


=head2 ListId => Str

The ID of the applications list.


=head2 ListName => Str

The name of the applications list.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

