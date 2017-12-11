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

$prototype=virtual qint64 cacheSize () const = 0
$method=|qint64|cacheSize|

$prototype=virtual QIODevice * data ( const QUrl & url ) = 0
$method=|QIODevice *|data|const QUrl &

$prototype=virtual void insert ( QIODevice * device ) = 0
$method=|void|insert|QIODevice *

$prototype=virtual QNetworkCacheMetaData metaData ( const QUrl & url ) = 0
$method=|QNetworkCacheMetaData|metaData|const QUrl &

$prototype=virtual QIODevice * prepare ( const QNetworkCacheMetaData & metaData ) = 0
$method=|QIODevice *|prepare|const QNetworkCacheMetaData &

$prototype=virtual bool remove ( const QUrl & url ) = 0
$method=|bool|remove|const QUrl &

$prototype=virtual void updateMetaData ( const QNetworkCacheMetaData & metaData ) = 0
$method=|void|updateMetaData|const QNetworkCacheMetaData &

$prototype=virtual void clear () = 0
$method=|void|clear|

#pragma ENDDUMP
