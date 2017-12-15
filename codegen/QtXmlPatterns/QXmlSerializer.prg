$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTCODEC
REQUEST QIODEVICE
#endif

CLASS QXmlSerializer INHERIT QAbstractXmlReceiver

   METHOD new
   METHOD delete
   METHOD codec
   METHOD outputDevice
   METHOD setCodec
   METHOD atomicValue
   METHOD attribute
   METHOD characters
   METHOD comment
   METHOD endDocument
   METHOD endElement
   METHOD endOfSequence
   METHOD namespaceBinding
   METHOD processingInstruction
   METHOD startDocument
   METHOD startElement
   METHOD startOfSequence

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QXmlSerializer ( const QXmlQuery & query, QIODevice * outputDevice )
$constructor=|new|const QXmlQuery &,QIODevice *

$deleteMethod

$prototype=const QTextCodec * codec () const
$method=|const QTextCodec *|codec|

$prototype=QIODevice * outputDevice () const
$method=|QIODevice *|outputDevice|

$prototype=void setCodec ( const QTextCodec * outputCodec )
$method=|void|setCodec|const QTextCodec *

$prototype=virtual void atomicValue ( const QVariant & value )
$method=|void|atomicValue|const QVariant &

$prototype=virtual void attribute ( const QXmlName & name, const QStringRef & value )
$method=|void|attribute|const QXmlName &,const QStringRef &

$prototype=virtual void characters ( const QStringRef & value )
$method=|void|characters|const QStringRef &

$prototype=virtual void comment ( const QString & value )
$method=|void|comment|const QString &

$prototype=virtual void endDocument ()
$method=|void|endDocument|

$prototype=virtual void endElement ()
$method=|void|endElement|

$prototype=virtual void endOfSequence ()
$method=|void|endOfSequence|

$prototype=virtual void namespaceBinding ( const QXmlName & nb )
$method=|void|namespaceBinding|const QXmlName &

$prototype=virtual void processingInstruction ( const QXmlName & name, const QString & value )
$method=|void|processingInstruction|const QXmlName &,const QString &

$prototype=virtual void startDocument ()
$method=|void|startDocument|

$prototype=virtual void startElement ( const QXmlName & name )
$method=|void|startElement|const QXmlName &

$prototype=virtual void startOfSequence ()
$method=|void|startOfSequence|

#pragma ENDDUMP
