# Generated by default/object.tt
package Paws::ServiceCatalog::PortfolioShareDetail;
  use Moose;
  has Accepted => (is => 'ro', isa => 'Bool');
  has PrincipalId => (is => 'ro', isa => 'Str');
  has ShareTagOptions => (is => 'ro', isa => 'Bool');
  has Type => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::PortfolioShareDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::PortfolioShareDetail object:

  $service_obj->Method(Att1 => { Accepted => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::PortfolioShareDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->Accepted

=head1 DESCRIPTION

Information about the portfolio share.

=head1 ATTRIBUTES


=head2 Accepted => Bool

Indicates whether the shared portfolio is imported by the recipient
account. If the recipient is in an organization node, the share is
automatically imported, and the field is always set to true.


=head2 PrincipalId => Str

The identifier of the recipient entity that received the portfolio
share. The recipient entities can be one of the following:

1. An external account.

2. An organziation member account.

3. An organzational unit (OU).

4. The organization itself. (This shares with every account in the
organization).


=head2 ShareTagOptions => Bool

Indicates whether TagOptions sharing is enabled or disabled for the
portfolio share.


=head2 Type => Str

The type of the portfolio share.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

