package ONVIF::Device::Types::RecordingJobStateSource;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %SourceToken_of :ATTR(:get<SourceToken>);
my %State_of :ATTR(:get<State>);
my %Tracks_of :ATTR(:get<Tracks>);

__PACKAGE__->_factory(
    [ qw(        SourceToken
        State
        Tracks

    ) ],
    {
        'SourceToken' => \%SourceToken_of,
        'State' => \%State_of,
        'Tracks' => \%Tracks_of,
    },
    {
        'SourceToken' => 'ONVIF::Device::Types::SourceReference',
        'State' => 'ONVIF::Device::Types::RecordingJobState',
        'Tracks' => 'ONVIF::Device::Types::RecordingJobStateTracks',
    },
    {

        'SourceToken' => 'SourceToken',
        'State' => 'State',
        'Tracks' => 'Tracks',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Device::Types::RecordingJobStateSource

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
RecordingJobStateSource from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * SourceToken


=item * State


=item * Tracks




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Device::Types::RecordingJobStateSource
   SourceToken =>  { # ONVIF::Device::Types::SourceReference
     Token => $some_value, # ReferenceToken
   },
   State => $some_value, # RecordingJobState
   Tracks =>  { # ONVIF::Device::Types::RecordingJobStateTracks
     Track =>  { # ONVIF::Device::Types::RecordingJobStateTrack
       SourceTag =>  $some_value, # string
       Destination => $some_value, # TrackReference
       Error =>  $some_value, # string
       State => $some_value, # RecordingJobState
     },
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

