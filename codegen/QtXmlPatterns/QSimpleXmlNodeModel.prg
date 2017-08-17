$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QXMLNAMEPOOL
REQUEST QURL
REQUEST QXMLNODEMODELINDEX
REQUEST QXMLNAME
#endif

CLASS QSimpleXmlNodeModel INHERIT QAbstractXmlNodeModel

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD namePool
   METHOD baseUri
   METHOD elementById
   METHOD namespaceBindings
   METHOD nodesByIdref
   METHOD stringValue

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QVector>

$deleteMethod

/*
QXmlNamePool & namePool () const
*/
$method=|QXmlNamePool &|namePool|

/*
virtual QUrl baseUri ( const QXmlNodeModelIndex & node ) const
*/
$method=|QUrl|baseUri|const QXmlNodeModelIndex &

/*
virtual QXmlNodeModelIndex elementById ( const QXmlName & id ) const
*/
$method=|QXmlNodeModelIndex|elementById|const QXmlName &

/*
virtual QVector<QXmlName> namespaceBindings ( const QXmlNodeModelIndex & node ) const
*/
$method=|QVector<QXmlName>|namespaceBindings|const QXmlNodeModelIndex &

/*
virtual QVector<QXmlNodeModelIndex> nodesByIdref ( const QXmlName & idref ) const
*/
$method=|QVector<QXmlNodeModelIndex>|nodesByIdref|const QXmlName &

/*
virtual QString stringValue ( const QXmlNodeModelIndex & node ) const
*/
$method=|QString|stringValue|const QXmlNodeModelIndex &

#pragma ENDDUMP
