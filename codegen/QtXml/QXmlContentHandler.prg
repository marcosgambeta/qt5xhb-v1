%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtXml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual bool characters ( const QString & ch ) = 0
$virtualMethod=|bool|characters|const QString &

$prototype=virtual bool endDocument () = 0
$virtualMethod=|bool|endDocument|

$prototype=virtual bool endElement ( const QString & namespaceURI, const QString & localName, const QString & qName ) = 0
$virtualMethod=|bool|endElement|const QString &,const QString &,const QString &

$prototype=virtual bool endPrefixMapping ( const QString & prefix ) = 0
$virtualMethod=|bool|endPrefixMapping|const QString &

$prototype=virtual QString errorString () const = 0
$virtualMethod=|QString|errorString|

$prototype=virtual bool ignorableWhitespace ( const QString & ch ) = 0
$virtualMethod=|bool|ignorableWhitespace|const QString &

$prototype=virtual bool processingInstruction ( const QString & target, const QString & data ) = 0
$virtualMethod=|bool|processingInstruction|const QString &,const QString &

$prototype=virtual void setDocumentLocator ( QXmlLocator * locator ) = 0
$virtualMethod=|void|setDocumentLocator|QXmlLocator *

$prototype=virtual bool skippedEntity ( const QString & name ) = 0
$virtualMethod=|bool|skippedEntity|const QString &

$prototype=virtual bool startDocument () = 0
$virtualMethod=|bool|startDocument|

$prototype=virtual bool startElement ( const QString & namespaceURI, const QString & localName, const QString & qName, const QXmlAttributes & atts ) = 0
$virtualMethod=|bool|startElement|const QString &,const QString &,const QString &,const QXmlAttributes &

$prototype=virtual bool startPrefixMapping ( const QString & prefix, const QString & uri ) = 0
$virtualMethod=|bool|startPrefixMapping|const QString &,const QString &

$extraMethods

#pragma ENDDUMP
