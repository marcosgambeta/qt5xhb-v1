$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QXMLNODEMODELINDEX
REQUEST QXMLNAME
REQUEST QSOURCELOCATION
REQUEST QVARIANT
#endif

CLASS QAbstractXmlNodeModel INHERIT QSharedData

   DATA self_destruction INIT .F.

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

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QVariant>
#include <QUrl>
#include <QVector>
#include <QSourceLocation>

$deleteMethod

/*
virtual QUrl baseUri ( const QXmlNodeModelIndex & n ) const = 0
*/
$method=|QUrl|baseUri|const QXmlNodeModelIndex &

/*
virtual QXmlNodeModelIndex::DocumentOrder compareOrder ( const QXmlNodeModelIndex & ni1, const QXmlNodeModelIndex & ni2 ) const = 0
*/
$method=|QXmlNodeModelIndex::DocumentOrder|compareOrder|const QXmlNodeModelIndex &,const QXmlNodeModelIndex &

/*
virtual QUrl documentUri ( const QXmlNodeModelIndex & n ) const = 0
*/
$method=|QUrl|documentUri|const QXmlNodeModelIndex &

/*
virtual QXmlNodeModelIndex elementById ( const QXmlName & id ) const = 0
*/
$method=|QXmlNodeModelIndex|elementById|const QXmlName &

/*
virtual QXmlNodeModelIndex::NodeKind kind ( const QXmlNodeModelIndex & ni ) const = 0
*/
$method=|QXmlNodeModelIndex::NodeKind|kind|const QXmlNodeModelIndex &

/*
virtual QXmlName name ( const QXmlNodeModelIndex & ni ) const = 0
*/
$method=|QXmlName|name|const QXmlNodeModelIndex &

/*
virtual QVector<QXmlName> namespaceBindings ( const QXmlNodeModelIndex & n ) const = 0
*/
$method=|QVector<QXmlName>|namespaceBindings|const QXmlNodeModelIndex &

/*
virtual QVector<QXmlNodeModelIndex> nodesByIdref ( const QXmlName & idref ) const = 0
*/
$method=|QVector<QXmlNodeModelIndex>|nodesByIdref|const QXmlName &

/*
virtual QXmlNodeModelIndex root ( const QXmlNodeModelIndex & n ) const = 0
*/
$method=|QXmlNodeModelIndex|root|const QXmlNodeModelIndex &

/*
QSourceLocation sourceLocation ( const QXmlNodeModelIndex & index ) const
*/
$method=|QSourceLocation|sourceLocation|const QXmlNodeModelIndex &

/*
virtual QString stringValue ( const QXmlNodeModelIndex & n ) const = 0
*/
$method=|QString|stringValue|const QXmlNodeModelIndex &

/*
virtual QVariant typedValue ( const QXmlNodeModelIndex & node ) const = 0
*/
$method=|QVariant|typedValue|const QXmlNodeModelIndex &

#pragma ENDDUMP
