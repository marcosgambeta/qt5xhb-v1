$header

#include "hbclass.ch"

CLASS QAbstractXmlReceiver

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
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

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual void atomicValue ( const QVariant & value ) = 0
*/
$method=|void|atomicValue|const QVariant &

/*
virtual void attribute ( const QXmlName & name, const QStringRef & value ) = 0
*/
$method=|void|attribute|const QXmlName &,const QStringRef &

/*
virtual void characters ( const QStringRef & value ) = 0
*/
$method=|void|characters|const QStringRef &

/*
virtual void comment ( const QString & value ) = 0
*/
$method=|void|comment|const QString &

/*
virtual void endDocument () = 0
*/
$method=|void|endDocument|

/*
virtual void endElement () = 0
*/
$method=|void|endElement|

/*
virtual void endOfSequence () = 0
*/
$method=|void|endOfSequence|

/*
virtual void namespaceBinding ( const QXmlName & name ) = 0
*/
$method=|void|namespaceBinding|const QXmlName &

/*
virtual void processingInstruction ( const QXmlName & target, const QString & value ) = 0
*/
$method=|void|processingInstruction|const QXmlName &,const QString &

/*
virtual void startDocument () = 0
*/
$method=|void|startDocument|

/*
virtual void startElement ( const QXmlName & name ) = 0
*/
$method=|void|startElement|const QXmlName &

/*
virtual void startOfSequence () = 0
*/
$method=|void|startOfSequence|

$extraMethods

#pragma ENDDUMP
