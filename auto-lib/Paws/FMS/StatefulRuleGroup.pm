# Generated by default/object.tt
package Paws::FMS::StatefulRuleGroup;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str');
  has RuleGroupName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::StatefulRuleGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FMS::StatefulRuleGroup object:

  $service_obj->Method(Att1 => { ResourceId => $value, ..., RuleGroupName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FMS::StatefulRuleGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceId

=head1 DESCRIPTION

AWS Network Firewall stateful rule group, used in a
NetworkFirewallPolicyDescription.

=head1 ATTRIBUTES


=head2 ResourceId => Str

The resource ID of the rule group.


=head2 RuleGroupName => Str

The name of the rule group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

