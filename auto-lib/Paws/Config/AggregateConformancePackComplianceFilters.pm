# Generated by default/object.tt
package Paws::Config::AggregateConformancePackComplianceFilters;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has AwsRegion => (is => 'ro', isa => 'Str');
  has ComplianceType => (is => 'ro', isa => 'Str');
  has ConformancePackName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::AggregateConformancePackComplianceFilters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::AggregateConformancePackComplianceFilters object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., ConformancePackName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::AggregateConformancePackComplianceFilters object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Filters the conformance packs based on an account ID, region,
compliance type, and the name of the conformance pack.

=head1 ATTRIBUTES


=head2 AccountId => Str

The 12-digit AWS account ID of the source account.


=head2 AwsRegion => Str

The source AWS Region from where the data is aggregated.


=head2 ComplianceType => Str

The compliance status of the conformance pack.


=head2 ConformancePackName => Str

The name of the conformance pack.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

