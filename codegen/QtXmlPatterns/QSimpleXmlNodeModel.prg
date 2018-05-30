%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractXmlNodeModel

   METHOD delete
   METHOD namePool
   METHOD baseUri
   METHOD elementById
   METHOD namespaceBindings
   METHOD nodesByIdref
   METHOD stringValue

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QVector>

$deleteMethod

$prototype=QXmlNamePool & namePool () const
$method=|QXmlNamePool &|namePool|

$prototype=virtual QUrl baseUri ( const QXmlNodeModelIndex & node ) const
$virtualMethod=|QUrl|baseUri|const QXmlNodeModelIndex &

$prototype=virtual QXmlNodeModelIndex elementById ( const QXmlName & id ) const
$virtualMethod=|QXmlNodeModelIndex|elementById|const QXmlName &

$prototype=virtual QVector<QXmlName> namespaceBindings ( const QXmlNodeModelIndex & node ) const
$virtualMethod=|QVector<QXmlName>|namespaceBindings|const QXmlNodeModelIndex &

$prototype=virtual QVector<QXmlNodeModelIndex> nodesByIdref ( const QXmlName & idref ) const
$virtualMethod=|QVector<QXmlNodeModelIndex>|nodesByIdref|const QXmlName &

$prototype=virtual QString stringValue ( const QXmlNodeModelIndex & node ) const
$virtualMethod=|QString|stringValue|const QXmlNodeModelIndex &

#pragma ENDDUMP
