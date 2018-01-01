%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$prototype=virtual void atomicValue ( const QVariant & value ) = 0
$virtualMethod=|void|atomicValue|const QVariant &

$prototype=virtual void attribute ( const QXmlName & name, const QStringRef & value ) = 0
$virtualMethod=|void|attribute|const QXmlName &,const QStringRef &

$prototype=virtual void characters ( const QStringRef & value ) = 0
$virtualMethod=|void|characters|const QStringRef &

$prototype=virtual void comment ( const QString & value ) = 0
$virtualMethod=|void|comment|const QString &

$prototype=virtual void endDocument () = 0
$virtualMethod=|void|endDocument|

$prototype=virtual void endElement () = 0
$virtualMethod=|void|endElement|

$prototype=virtual void endOfSequence () = 0
$virtualMethod=|void|endOfSequence|

$prototype=virtual void namespaceBinding ( const QXmlName & name ) = 0
$virtualMethod=|void|namespaceBinding|const QXmlName &

$prototype=virtual void processingInstruction ( const QXmlName & target, const QString & value ) = 0
$virtualMethod=|void|processingInstruction|const QXmlName &,const QString &

$prototype=virtual void startDocument () = 0
$virtualMethod=|void|startDocument|

$prototype=virtual void startElement ( const QXmlName & name ) = 0
$virtualMethod=|void|startElement|const QXmlName &

$prototype=virtual void startOfSequence () = 0
$virtualMethod=|void|startOfSequence|

$extraMethods

#pragma ENDDUMP
