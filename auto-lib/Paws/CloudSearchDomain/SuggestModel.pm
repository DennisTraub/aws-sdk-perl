package Paws::CloudSearchDomain::SuggestModel;
  use Moose;
  has found => (is => 'ro', isa => 'Int');
  has query => (is => 'ro', isa => 'Str');
  has suggestions => (is => 'ro', isa => 'ArrayRef[Paws::CloudSearchDomain::SuggestionMatch]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearchDomain::SuggestModel

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearchDomain::SuggestModel object:

  $service_obj->Method(Att1 => { found => $value, ..., suggestions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearchDomain::SuggestModel object:

  $result = $service_obj->Method(...);
  $result->Att1->found

=head1 ATTRIBUTES

=head2 found => Int

  

The number of documents that were found to match the query string.










=head2 query => Str

  

The query string specified in the suggest request.










=head2 suggestions => ArrayRef[Paws::CloudSearchDomain::SuggestionMatch]

  

The documents that match the query string.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearchDomain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

