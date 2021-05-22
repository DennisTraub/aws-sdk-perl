# Generated by default/object.tt
package Paws::QLDB::JournalKinesisStreamDescription;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has ErrorCause => (is => 'ro', isa => 'Str');
  has ExclusiveEndTime => (is => 'ro', isa => 'Str');
  has InclusiveStartTime => (is => 'ro', isa => 'Str');
  has KinesisConfiguration => (is => 'ro', isa => 'Paws::QLDB::KinesisConfiguration', required => 1);
  has LedgerName => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has StreamId => (is => 'ro', isa => 'Str', required => 1);
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::JournalKinesisStreamDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QLDB::JournalKinesisStreamDescription object:

  $service_obj->Method(Att1 => { Arn => $value, ..., StreamName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QLDB::JournalKinesisStreamDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

The information about an Amazon QLDB journal stream, including the
Amazon Resource Name (ARN), stream name, creation time, current status,
and the parameters of your original stream creation request.

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the QLDB journal stream.


=head2 CreationTime => Str

The date and time, in epoch time format, when the QLDB journal stream
was created. (Epoch time format is the number of seconds elapsed since
12:00:00 AM January 1, 1970 UTC.)


=head2 ErrorCause => Str

The error message that describes the reason that a stream has a status
of C<IMPAIRED> or C<FAILED>. This is not applicable to streams that
have other status values.


=head2 ExclusiveEndTime => Str

The exclusive date and time that specifies when the stream ends. If
this parameter is blank, the stream runs indefinitely until you cancel
it.


=head2 InclusiveStartTime => Str

The inclusive start date and time from which to start streaming journal
data.


=head2 B<REQUIRED> KinesisConfiguration => L<Paws::QLDB::KinesisConfiguration>

The configuration settings of the Amazon Kinesis Data Streams
destination for your QLDB journal stream.


=head2 B<REQUIRED> LedgerName => Str

The name of the ledger.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that grants QLDB
permissions for a journal stream to write data records to a Kinesis
Data Streams resource.


=head2 B<REQUIRED> Status => Str

The current state of the QLDB journal stream.


=head2 B<REQUIRED> StreamId => Str

The unique ID that QLDB assigns to each QLDB journal stream.


=head2 B<REQUIRED> StreamName => Str

The user-defined name of the QLDB journal stream.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QLDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

