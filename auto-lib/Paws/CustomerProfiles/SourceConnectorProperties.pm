# Generated by default/object.tt
package Paws::CustomerProfiles::SourceConnectorProperties;
  use Moose;
  has Marketo => (is => 'ro', isa => 'Paws::CustomerProfiles::MarketoSourceProperties');
  has S3 => (is => 'ro', isa => 'Paws::CustomerProfiles::S3SourceProperties');
  has Salesforce => (is => 'ro', isa => 'Paws::CustomerProfiles::SalesforceSourceProperties');
  has ServiceNow => (is => 'ro', isa => 'Paws::CustomerProfiles::ServiceNowSourceProperties');
  has Zendesk => (is => 'ro', isa => 'Paws::CustomerProfiles::ZendeskSourceProperties');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::SourceConnectorProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CustomerProfiles::SourceConnectorProperties object:

  $service_obj->Method(Att1 => { Marketo => $value, ..., Zendesk => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CustomerProfiles::SourceConnectorProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->Marketo

=head1 DESCRIPTION

Specifies the information that is required to query a particular Amazon
AppFlow connector. Customer Profiles supports Salesforce, Zendesk,
Marketo, ServiceNow and Amazon S3.

=head1 ATTRIBUTES


=head2 Marketo => L<Paws::CustomerProfiles::MarketoSourceProperties>

The properties that are applied when Marketo is being used as a source.


=head2 S3 => L<Paws::CustomerProfiles::S3SourceProperties>

The properties that are applied when Amazon S3 is being used as the
flow source.


=head2 Salesforce => L<Paws::CustomerProfiles::SalesforceSourceProperties>

The properties that are applied when Salesforce is being used as a
source.


=head2 ServiceNow => L<Paws::CustomerProfiles::ServiceNowSourceProperties>

The properties that are applied when ServiceNow is being used as a
source.


=head2 Zendesk => L<Paws::CustomerProfiles::ZendeskSourceProperties>

The properties that are applied when using Zendesk as a flow source.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

