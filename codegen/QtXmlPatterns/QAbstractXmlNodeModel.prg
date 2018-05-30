%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSharedData

   METHOD delete
   METHOD baseUri
   METHOD compareOrder
   METHOD documentUri
   METHOD elementById
   METHOD kind
   METHOD name
   METHOD namespaceBindings
   METHOD nodesByIdref
   METHOD root
   METHOD sourceLocation
   METHOD stringValue
   METHOD typedValue

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QVariant>
#include <QUrl>
#include <QVector>
#include <QSourceLocation>

$deleteMethod

$prototype=virtual QUrl baseUri ( const QXmlNodeModelIndex & n ) const = 0
$virtualMethod=|QUrl|baseUri|const QXmlNodeModelIndex &

$prototype=virtual QXmlNodeModelIndex::DocumentOrder compareOrder ( const QXmlNodeModelIndex & ni1, const QXmlNodeModelIndex & ni2 ) const = 0
$virtualMethod=|QXmlNodeModelIndex::DocumentOrder|compareOrder|const QXmlNodeModelIndex &,const QXmlNodeModelIndex &

$prototype=virtual QUrl documentUri ( const QXmlNodeModelIndex & n ) const = 0
$virtualMethod=|QUrl|documentUri|const QXmlNodeModelIndex &

$prototype=virtual QXmlNodeModelIndex elementById ( const QXmlName & id ) const = 0
$virtualMethod=|QXmlNodeModelIndex|elementById|const QXmlName &

$prototype=virtual QXmlNodeModelIndex::NodeKind kind ( const QXmlNodeModelIndex & ni ) const = 0
$virtualMethod=|QXmlNodeModelIndex::NodeKind|kind|const QXmlNodeModelIndex &

$prototype=virtual QXmlName name ( const QXmlNodeModelIndex & ni ) const = 0
$virtualMethod=|QXmlName|name|const QXmlNodeModelIndex &

$prototype=virtual QVector<QXmlName> namespaceBindings ( const QXmlNodeModelIndex & n ) const = 0
$virtualMethod=|QVector<QXmlName>|namespaceBindings|const QXmlNodeModelIndex &

$prototype=virtual QVector<QXmlNodeModelIndex> nodesByIdref ( const QXmlName & idref ) const = 0
$virtualMethod=|QVector<QXmlNodeModelIndex>|nodesByIdref|const QXmlName &

$prototype=virtual QXmlNodeModelIndex root ( const QXmlNodeModelIndex & n ) const = 0
$virtualMethod=|QXmlNodeModelIndex|root|const QXmlNodeModelIndex &

$prototype=QSourceLocation sourceLocation ( const QXmlNodeModelIndex & index ) const
$method=|QSourceLocation|sourceLocation|const QXmlNodeModelIndex &

$prototype=virtual QString stringValue ( const QXmlNodeModelIndex & n ) const = 0
$virtualMethod=|QString|stringValue|const QXmlNodeModelIndex &

$prototype=virtual QVariant typedValue ( const QXmlNodeModelIndex & node ) const = 0
$virtualMethod=|QVariant|typedValue|const QXmlNodeModelIndex &

#pragma ENDDUMP
