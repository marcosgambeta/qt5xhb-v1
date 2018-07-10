%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QXmlSerializer

$addMethods

$endClass

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
$virtualMethod=|void|atomicValue|const QVariant &

$prototype=virtual void attribute ( const QXmlName & name, const QStringRef & value )
$virtualMethod=|void|attribute|const QXmlName &,const QStringRef &

$prototype=virtual void characters ( const QStringRef & value )
$virtualMethod=|void|characters|const QStringRef &

$prototype=virtual void comment ( const QString & value )
$virtualMethod=|void|comment|const QString &

$prototype=virtual void endDocument ()
$virtualMethod=|void|endDocument|

$prototype=virtual void endElement ()
$virtualMethod=|void|endElement|

$prototype=virtual void endOfSequence ()
$virtualMethod=|void|endOfSequence|

$prototype=virtual void processingInstruction ( const QXmlName & name, const QString & value )
$virtualMethod=|void|processingInstruction|const QXmlName &,const QString &

$prototype=virtual void startDocument ()
$virtualMethod=|void|startDocument|

$prototype=virtual void startElement ( const QXmlName & name )
$virtualMethod=|void|startElement|const QXmlName &

$prototype=virtual void startOfSequence ()
$virtualMethod=|void|startOfSequence|

#pragma ENDDUMP
