# Generated by default/object.tt
package Paws::ApiGatewayV2::UpdateIntegrationInput;
  use Moose;
  has ConnectionId => (is => 'ro', isa => 'Str', request_name => 'connectionId', traits => ['NameInRequest']);
  has ConnectionType => (is => 'ro', isa => 'Str', request_name => 'connectionType', traits => ['NameInRequest']);
  has ContentHandlingStrategy => (is => 'ro', isa => 'Str', request_name => 'contentHandlingStrategy', traits => ['NameInRequest']);
  has CredentialsArn => (is => 'ro', isa => 'Str', request_name => 'credentialsArn', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has IntegrationMethod => (is => 'ro', isa => 'Str', request_name => 'integrationMethod', traits => ['NameInRequest']);
  has IntegrationSubtype => (is => 'ro', isa => 'Str', request_name => 'integrationSubtype', traits => ['NameInRequest']);
  has IntegrationType => (is => 'ro', isa => 'Str', request_name => 'integrationType', traits => ['NameInRequest']);
  has IntegrationUri => (is => 'ro', isa => 'Str', request_name => 'integrationUri', traits => ['NameInRequest']);
  has PassthroughBehavior => (is => 'ro', isa => 'Str', request_name => 'passthroughBehavior', traits => ['NameInRequest']);
  has PayloadFormatVersion => (is => 'ro', isa => 'Str', request_name => 'payloadFormatVersion', traits => ['NameInRequest']);
  has RequestParameters => (is => 'ro', isa => 'Paws::ApiGatewayV2::IntegrationParameters', request_name => 'requestParameters', traits => ['NameInRequest']);
  has RequestTemplates => (is => 'ro', isa => 'Paws::ApiGatewayV2::TemplateMap', request_name => 'requestTemplates', traits => ['NameInRequest']);
  has ResponseParameters => (is => 'ro', isa => 'Paws::ApiGatewayV2::ResponseParameters', request_name => 'responseParameters', traits => ['NameInRequest']);
  has TemplateSelectionExpression => (is => 'ro', isa => 'Str', request_name => 'templateSelectionExpression', traits => ['NameInRequest']);
  has TimeoutInMillis => (is => 'ro', isa => 'Int', request_name => 'timeoutInMillis', traits => ['NameInRequest']);
  has TlsConfig => (is => 'ro', isa => 'Paws::ApiGatewayV2::TlsConfigInput', request_name => 'tlsConfig', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::UpdateIntegrationInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::UpdateIntegrationInput object:

  $service_obj->Method(Att1 => { ConnectionId => $value, ..., TlsConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::UpdateIntegrationInput object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectionId

=head1 DESCRIPTION

Represents the input parameters for an UpdateIntegration request.

=head1 ATTRIBUTES


=head2 ConnectionId => Str

The ID of the VPC link for a private integration. Supported only for
HTTP APIs.


=head2 ConnectionType => Str

The type of the network connection to the integration endpoint. Specify
INTERNET for connections through the public routable internet or
VPC_LINK for private connections between API Gateway and resources in a
VPC. The default value is INTERNET.


=head2 ContentHandlingStrategy => Str

Supported only for WebSocket APIs. Specifies how to handle response
payload content type conversions. Supported values are
CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:

CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded
string to the corresponding binary blob.

CONVERT_TO_TEXT: Converts a response payload from a binary blob to a
Base64-encoded string.

If this property is not defined, the response payload will be passed
through from the integration response to the route response or method
response without modification.


=head2 CredentialsArn => Str

Specifies the credentials required for the integration, if any. For AWS
integrations, three options are available. To specify an IAM Role for
API Gateway to assume, use the role's Amazon Resource Name (ARN). To
require that the caller's identity be passed through from the request,
specify the string arn:aws:iam::*:user/*. To use resource-based
permissions on supported AWS services, specify null.


=head2 Description => Str

The description of the integration


=head2 IntegrationMethod => Str

Specifies the integration's HTTP method type.


=head2 IntegrationSubtype => Str

Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS
service action to invoke. To learn more, see Integration subtype
reference
(https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html).


=head2 IntegrationType => Str

The integration type of an integration. One of the following:

AWS: for integrating the route or method request with an AWS service
action, including the Lambda function-invoking action. With the Lambda
function-invoking action, this is referred to as the Lambda custom
integration. With any other AWS service action, this is known as AWS
integration. Supported only for WebSocket APIs.

AWS_PROXY: for integrating the route or method request with a Lambda
function or other AWS service action. This integration is also referred
to as a Lambda proxy integration.

HTTP: for integrating the route or method request with an HTTP
endpoint. This integration is also referred to as the HTTP custom
integration. Supported only for WebSocket APIs.

HTTP_PROXY: for integrating the route or method request with an HTTP
endpoint, with the client request passed through as-is. This is also
referred to as HTTP proxy integration. For HTTP API private
integrations, use an HTTP_PROXY integration.

MOCK: for integrating the route or method request with API Gateway as a
"loopback" endpoint without invoking any backend. Supported only for
WebSocket APIs.


=head2 IntegrationUri => Str

For a Lambda integration, specify the URI of a Lambda function.

For an HTTP integration, specify a fully-qualified URL.

For an HTTP API private integration, specify the ARN of an Application
Load Balancer listener, Network Load Balancer listener, or AWS Cloud
Map service. If you specify the ARN of an AWS Cloud Map service, API
Gateway uses DiscoverInstances to identify resources. You can use query
parameters to target specific resources. To learn more, see
DiscoverInstances
(https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html).
For private integrations, all resources must be owned by the same AWS
account.


=head2 PassthroughBehavior => Str

Specifies the pass-through behavior for incoming requests based on the
Content-Type header in the request, and the available mapping templates
specified as the requestTemplates property on the Integration resource.
There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and
NEVER. Supported only for WebSocket APIs.

WHEN_NO_MATCH passes the request body for unmapped content types
through to the integration backend without transformation.

NEVER rejects unmapped content types with an HTTP 415 Unsupported Media
Type response.

WHEN_NO_TEMPLATES allows pass-through when the integration has no
content types mapped to templates. However, if there is at least one
content type defined, unmapped content types will be rejected with the
same HTTP 415 Unsupported Media Type response.


=head2 PayloadFormatVersion => Str

Specifies the format of the payload sent to an integration. Required
for HTTP APIs.


=head2 RequestParameters => L<Paws::ApiGatewayV2::IntegrationParameters>

For WebSocket APIs, a key-value map specifying request parameters that
are passed from the method request to the backend. The key is an
integration request parameter name and the associated value is a method
request parameter value or static value that must be enclosed within
single quotes and pre-encoded as required by the backend. The method
request parameter value must match the pattern of
method.request.{location}.{name} , where {location} is querystring,
path, or header; and {name} must be a valid and unique method request
parameter name.

For HTTP API integrations with a specified integrationSubtype, request
parameters are a key-value map specifying parameters that are passed to
AWS_PROXY integrations. You can provide static values, or map request
data, stage variables, or context variables that are evaluated at
runtime. To learn more, see Working with AWS service integrations for
HTTP APIs
(https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html).

For HTTP API integrations, without a specified integrationSubtype
request parameters are a key-value map specifying how to transform HTTP
requests before sending them to the backend. The key should follow the
pattern
E<lt>actionE<gt>:E<lt>header|querystring|pathE<gt>.E<lt>locationE<gt>
where action can be append, overwrite or remove. For values, you can
provide static values, or map request data, stage variables, or context
variables that are evaluated at runtime. To learn more, see
Transforming API requests and responses
(https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.).


=head2 RequestTemplates => L<Paws::ApiGatewayV2::TemplateMap>

Represents a map of Velocity templates that are applied on the request
payload based on the value of the Content-Type header sent by the
client. The content type value is the key in this map, and the template
(as a String) is the value. Supported only for WebSocket APIs.


=head2 ResponseParameters => L<Paws::ApiGatewayV2::ResponseParameters>

Supported only for HTTP APIs. You use response parameters to transform
the HTTP response from a backend integration before returning the
response to clients. Specify a key-value map from a selection key to
response parameters. The selection key must be a valid HTTP status code
within the range of 200-599. Response parameters are a key-value map.
The key must match pattern
E<lt>actionE<gt>:E<lt>headerE<gt>.E<lt>locationE<gt> or
overwrite.statuscode. The action can be append, overwrite or remove.
The value can be a static value, or map to response data, stage
variables, or context variables that are evaluated at runtime. To learn
more, see Transforming API requests and responses
(https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html).


=head2 TemplateSelectionExpression => Str

The template selection expression for the integration.


=head2 TimeoutInMillis => Int

Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs
and between 50 and 30,000 milliseconds for HTTP APIs. The default
timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.


=head2 TlsConfig => L<Paws::ApiGatewayV2::TlsConfigInput>

The TLS configuration for a private integration. If you specify a TLS
configuration, private integration traffic uses the HTTPS protocol.
Supported only for HTTP APIs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

