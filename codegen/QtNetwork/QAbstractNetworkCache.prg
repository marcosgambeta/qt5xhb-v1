$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QNETWORKCACHEMETADATA
#endif

CLASS QAbstractNetworkCache INHERIT QObject

   METHOD delete
   METHOD cacheSize
   METHOD data
   METHOD insert
   METHOD metaData
   METHOD prepare
   METHOD remove
   METHOD updateMetaData
   METHOD clear

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual qint64 cacheSize () const = 0
*/
$method=|qint64|cacheSize|

/*
virtual QIODevice * data ( const QUrl & url ) = 0
*/
$method=|QIODevice *|data|const QUrl &

/*
virtual void insert ( QIODevice * device ) = 0
*/
$method=|void|insert|QIODevice *

/*
virtual QNetworkCacheMetaData metaData ( const QUrl & url ) = 0
*/
$method=|QNetworkCacheMetaData|metaData|const QUrl &

/*
virtual QIODevice * prepare ( const QNetworkCacheMetaData & metaData ) = 0
*/
$method=|QIODevice *|prepare|const QNetworkCacheMetaData &

/*
virtual bool remove ( const QUrl & url ) = 0
*/
$method=|bool|remove|const QUrl &

/*
virtual void updateMetaData ( const QNetworkCacheMetaData & metaData ) = 0
*/
$method=|void|updateMetaData|const QNetworkCacheMetaData &

/*
virtual void clear () = 0
*/
$method=|void|clear|

#pragma ENDDUMP
