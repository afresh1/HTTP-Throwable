package HTTP::Throwable::Role::Status::NotAcceptable;

use Moo::Role;

with(
    'HTTP::Throwable',
    'HTTP::Throwable::Role::BoringText',
);

sub default_status_code { 406 }
sub default_reason      { 'Not Acceptable' }

no Moo::Role; 1;

__END__

# ABSTRACT: 406 Not Acceptable

=head1 DESCRIPTION

The resource identified by the request is only capable of generating
response entities which have content characteristics not acceptable
according to the accept headers sent in the request.

Unless it was a HEAD request, the response SHOULD include an entity
containing a list of available entity characteristics and location(s)
from which the user or user agent can choose the one most appropriate.
The entity format is specified by the media type given in the
Content-Type header field. Depending upon the format and the capabilities
of the user agent, selection of the most appropriate choice MAY be
performed automatically. However, this specification does not define
any standard for such automatic selection.

  Note: HTTP/1.1 servers are allowed to return responses which are
  not acceptable according to the accept headers sent in the
  request. In some cases, this may even be preferable to sending a
  406 response. User agents are encouraged to inspect the headers of
  an incoming response to determine if it is acceptable.

If the response could be unacceptable, a user agent SHOULD temporarily
stop receipt of more data and query the user for a decision on further
actions.
