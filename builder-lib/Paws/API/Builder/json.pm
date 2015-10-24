package Paws::API::Builder::json {

  use Data::Printer;
  use Data::Dumper;

  use autodie;

  use Moose;

  extends 'Paws::API::Builder';

  has target_prefix => (is => 'ro', lazy => 1, default => sub { $_[0]->api_struct->{metadata}{ targetPrefix } });
  has json_version => (
    is => 'ro', 
    lazy => 1, 
    default => sub { 
      my $ver = $_[0]->api_struct->{metadata}->{ jsonVersion }; 
      return sprintf("%.1f", $ver) 
    }
  );
  has wrapped_responses => (is => 'ro', lazy => 1, default => sub { $_[0]->api_struct->{ result_wrapped } });
  has response_role  => (is => 'ro', lazy => 1, default => sub { 'Paws::Net::JsonResponse' });

  has callargs_class_template => (is => 'ro', isa => 'Str', default => q#
[%- operation = c.operation(op_name) %]
[%- shape = c.input_for_operation(op_name) %]
package [% c.api %]::[% operation.name %];
  use Moose;
[% FOREACH param_name IN shape.members.keys.sort -%]
  [%- member = c.shape(shape.members.$param_name.shape) -%]
  has [% param_name %] => (is => 'ro', isa => '[% member.perl_type %]'
  [%- IF (shape.members.${param_name}.locationName && shape.members.${param_name}.locationName != param_name) %], traits => ['NameInRequest'], request_name => '[% shape.members.${param_name}.locationName %]' [% END %]
  [%- IF (shape.members.$param_name.streaming == 1) %], traits => ['ParamInBody'][% END %]
  [%- IF (c.required_in_shape(shape,param_name)) %], required => 1[% END %]);
[% END %]
  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => '[% op_name %]');
  class_has _returns => (isa => 'Str', is => 'ro'[% IF (operation.output.keys.size) %], default => '[% c.api %]::[% c.shapename_for_operation_output(op_name) %]'[% END %]);
  class_has _result_key => (isa => 'Str', is => 'ro');
1;
[% c.callclass_documentation_template | eval %]
#);

  has callresult_class_template => (is => 'ro', isa => 'Str', default => q#
[%- operation = c.result_for_operation(op_name) %]
[%- shape = c.result_for_operation(op_name) %]
[%- IF (shape) %]
package [% c.api %]::[% c.shapename_for_operation_output(op_name) %];
  use Moose;
[% FOREACH param_name IN shape.members.keys.sort -%]
  [%- member = c.shape(shape.members.$param_name.shape) -%]
  has [% param_name %] => (is => 'ro', isa => '[% member.perl_type %]'
  [%- IF (shape.members.${param_name}.locationName) %], traits => ['Unwrapped'], xmlname => '[% shape.members.${param_name}.locationName %]' [% END %]
  [%- IF (shape.members.$param_name.streaming == 1) %], traits => ['ParamInBody'][% END %]
  [%- IF (c.required_in_shape(shape,param_name)) %], required => 1[% END %]);
[% END %]
[%- END %]
[% c.class_documentation_template | eval %]
1;#);

  has service_class_template => (is => 'ro', isa => 'Str', default => q#
[%- IF (c.enums.size) -%]
use Moose::Util::TypeConstraints;
[%- FOR enum_name IN c.enums.keys.sort %]
enum '[% enum_name %]', [[% FOR val IN c.enums.$enum_name %]'[% val %]',[% END %]];
[%- END %]
[%- END -%]
package [% c.api %];
  use Moose;
  sub service { '[% c.service %]' }
  sub version { '[% c.version %]' }
  sub target_prefix { '[% c.target_prefix %]' }
  sub json_version { "[% c.json_version %]" }

  with 'Paws::API::Caller', '[% c.endpoint_role %]', '[% c.signature_role %]', '[% c.parameter_role %]', '[% c.response_role %]';

  [%- c.service_endpoint_rules %]
  [% FOR op IN c.api_struct.operations.keys.sort %]
  [%- op_name = c.api_struct.operations.$op.name %]
  sub [% op_name %] {
    my $self = shift;
    my $call_object = $self->new_with_coercions('[% c.api %]::[% op_name %]', @_);
    return $self->caller->do_call($self, $call_object);
  }
  [%- END %]
  [% c.paginator_template | eval %]

  sub operations { qw/[% FOR op IN c.api_struct.operations.keys.sort; op _ ' '; END %]/ }

1;
[% c.service_documentation_template | eval %]
#);

}
1;
