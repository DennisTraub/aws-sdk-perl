
package Paws::CloudFormation::DescribeTypeOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has DefaultVersionId => (is => 'ro', isa => 'Str');
  has DeprecatedStatus => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DocumentationUrl => (is => 'ro', isa => 'Str');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str');
  has IsDefaultVersion => (is => 'ro', isa => 'Bool');
  has LastUpdated => (is => 'ro', isa => 'Str');
  has LoggingConfig => (is => 'ro', isa => 'Paws::CloudFormation::LoggingConfig');
  has ProvisioningType => (is => 'ro', isa => 'Str');
  has Schema => (is => 'ro', isa => 'Str');
  has SourceUrl => (is => 'ro', isa => 'Str');
  has TimeCreated => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has TypeName => (is => 'ro', isa => 'Str');
  has Visibility => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeTypeOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the extension.


=head2 DefaultVersionId => Str

The ID of the default version of the extension. The default version is
used when the extension version is not specified.

To set the default version of an extension, use C<
SetTypeDefaultVersion >.


=head2 DeprecatedStatus => Str

The deprecation status of the extension version.

Valid values include:

=over

=item *

C<LIVE>: The extension is registered and can be used in CloudFormation
operations, dependent on its provisioning behavior and visibility
scope.

=item *

C<DEPRECATED>: The extension has been deregistered and can no longer be
used in CloudFormation operations.

=back


Valid values are: C<"LIVE">, C<"DEPRECATED">
=head2 Description => Str

The description of the registered extension.


=head2 DocumentationUrl => Str

The URL of a page providing detailed documentation for this extension.


=head2 ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the IAM execution role used to
register the extension. If your resource type calls AWS APIs in any of
its handlers, you must create an I< IAM execution role
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html) > that
includes the necessary permissions to call those AWS APIs, and
provision that execution role in your account. CloudFormation then
assumes that execution role to provide your extension with the
appropriate credentials.


=head2 IsDefaultVersion => Bool

Whether the specified extension version is set as the default version.


=head2 LastUpdated => Str

When the specified extension version was registered.


=head2 LoggingConfig => L<Paws::CloudFormation::LoggingConfig>

Contains logging configuration information for an extension.


=head2 ProvisioningType => Str

The provisioning behavior of the extension. AWS CloudFormation
determines the provisioning type during registration, based on the
types of handlers in the schema handler package submitted.

Valid values include:

=over

=item *

C<FULLY_MUTABLE>: The extension includes an update handler to process
updates to the extension during stack update operations.

=item *

C<IMMUTABLE>: The extension does not include an update handler, so the
extension cannot be updated and must instead be replaced during stack
update operations.

=item *

C<NON_PROVISIONABLE>: The extension does not include all of the
following handlers, and therefore cannot actually be provisioned.

=over

=item *

create

=item *

read

=item *

delete

=back

=back


Valid values are: C<"NON_PROVISIONABLE">, C<"IMMUTABLE">, C<"FULLY_MUTABLE">
=head2 Schema => Str

The schema that defines the extension.

For more information on extension schemas, see Resource Provider Schema
(https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html)
in the I<CloudFormation CLI User Guide>.


=head2 SourceUrl => Str

The URL of the source code for the extension.


=head2 TimeCreated => Str

When the specified extension version was registered.


=head2 Type => Str

The kind of extension.

Valid values are: C<"RESOURCE">, C<"MODULE">
=head2 TypeName => Str

The name of the registered extension.


=head2 Visibility => Str

The scope at which the extension is visible and usable in
CloudFormation operations.

Valid values include:

=over

=item *

C<PRIVATE>: The extension is only visible and usable within the account
in which it is registered. Currently, AWS CloudFormation marks any
types you register as C<PRIVATE>.

=item *

C<PUBLIC>: The extension is publically visible and usable within any
Amazon account.

=back


Valid values are: C<"PUBLIC">, C<"PRIVATE">
=head2 _request_id => Str


=cut

