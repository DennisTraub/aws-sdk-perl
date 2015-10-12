package Paws::CloudWatchLogs::RejectedLogEventsInfo;
  use Moose;
  has expiredLogEventEndIndex => (is => 'ro', isa => 'Int');
  has tooNewLogEventStartIndex => (is => 'ro', isa => 'Int');
  has tooOldLogEventEndIndex => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::RejectedLogEventsInfo

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::RejectedLogEventsInfo object:

  $service_obj->Method(Att1 => { expiredLogEventEndIndex => $value, ..., tooOldLogEventEndIndex => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::RejectedLogEventsInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->expiredLogEventEndIndex

=head1 ATTRIBUTES

=head2 expiredLogEventEndIndex => Int

  

=head2 tooNewLogEventStartIndex => Int

  

=head2 tooOldLogEventEndIndex => Int

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

