package ONVIF::Device::Types::OSDReference;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use base qw(
    SOAP::WSDL::XSD::Typelib::ComplexType
    ONVIF::Device::Types::ReferenceToken
);





1;


=pod

=head1 NAME

ONVIF::Device::Types::OSDReference

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
OSDReference from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over



=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { value => $some_value },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

