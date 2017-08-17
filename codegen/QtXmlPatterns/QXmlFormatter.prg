$header

#include "hbclass.ch"

CLASS QXmlFormatter INHERIT QXmlSerializer

   DATA self_destruction INIT .F.

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

/*
QXmlFormatter ( const QXmlQuery & query, QIODevice * outputDevice )
*/
$constructor=|new|const QXmlQuery &,QIODevice *

$deleteMethod

/*
int indentationDepth () const
*/
$method=|int|indentationDepth|

/*
void setIndentationDepth ( int depth )
*/
$method=|void|setIndentationDepth|int

/*
virtual void atomicValue ( const QVariant & value )
*/
$method=|void|atomicValue|const QVariant &

/*
virtual void attribute ( const QXmlName & name, const QStringRef & value )
*/
$method=|void|attribute|const QXmlName &,const QStringRef &

/*
virtual void characters ( const QStringRef & value )
*/
$method=|void|characters|const QStringRef &

/*
virtual void comment ( const QString & value )
*/
$method=|void|comment|const QString &

/*
virtual void endDocument ()
*/
$method=|void|endDocument|

/*
virtual void endElement ()
*/
$method=|void|endElement|

/*
virtual void endOfSequence ()
*/
$method=|void|endOfSequence|

/*
virtual void processingInstruction ( const QXmlName & name, const QString & value )
*/
$method=|void|processingInstruction|const QXmlName &,const QString &

/*
virtual void startDocument ()
*/
$method=|void|startDocument|

/*
virtual void startElement ( const QXmlName & name )
*/
$method=|void|startElement|const QXmlName &

/*
virtual void startOfSequence ()
*/
$method=|void|startOfSequence|

#pragma ENDDUMP
