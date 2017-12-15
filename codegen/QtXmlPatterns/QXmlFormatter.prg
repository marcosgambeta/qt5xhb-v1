$header

#include "hbclass.ch"

CLASS QXmlFormatter INHERIT QXmlSerializer

   METHOD new
   METHOD delete
   METHOD indentationDepth
   METHOD setIndentationDepth
   METHOD atomicValue
   METHOD attribute
   METHOD characters
   METHOD comment
   METHOD endDocument
   METHOD endElement
   METHOD endOfSequence
   METHOD processingInstruction
   METHOD startDocument
   METHOD startElement
   METHOD startOfSequence

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QXmlFormatter ( const QXmlQuery & query, QIODevice * outputDevice )
$constructor=|new|const QXmlQuery &,QIODevice *

$deleteMethod

$prototype=int indentationDepth () const
$method=|int|indentationDepth|

$prototype=void setIndentationDepth ( int depth )
$method=|void|setIndentationDepth|int

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

$prototype=virtual void processingInstruction ( const QXmlName & name, const QString & value )
$method=|void|processingInstruction|const QXmlName &,const QString &

$prototype=virtual void startDocument ()
$method=|void|startDocument|

$prototype=virtual void startElement ( const QXmlName & name )
$method=|void|startElement|const QXmlName &

$prototype=virtual void startOfSequence ()
$method=|void|startOfSequence|

#pragma ENDDUMP
