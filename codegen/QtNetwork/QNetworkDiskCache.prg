$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKCACHEMETADATA
REQUEST QIODEVICE
#endif

CLASS QNetworkDiskCache INHERIT QAbstractNetworkCache

   METHOD new
   METHOD delete
   METHOD cacheDirectory
   METHOD fileMetaData
   METHOD maximumCacheSize
   METHOD setCacheDirectory
   METHOD setMaximumCacheSize
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

$prototype=QNetworkDiskCache ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=QString cacheDirectory () const
$method=|QString|cacheDirectory|

$prototype=QNetworkCacheMetaData fileMetaData ( const QString & fileName ) const
$method=|QNetworkCacheMetaData|fileMetaData|const QString &

$prototype=qint64 maximumCacheSize () const
$method=|qint64|maximumCacheSize|

$prototype=void setCacheDirectory ( const QString & cacheDir )
$method=|void|setCacheDirectory|const QString &

$prototype=void setMaximumCacheSize ( qint64 size )
$method=|void|setMaximumCacheSize|qint64

$prototype=virtual qint64 cacheSize () const
$method=|qint64|cacheSize|

$prototype=virtual QIODevice * data ( const QUrl & url )
$method=|QIODevice *|data|const QUrl &

$prototype=virtual void insert ( QIODevice * device )
$method=|void|insert|QIODevice *

$prototype=virtual QNetworkCacheMetaData metaData ( const QUrl & url )
$method=|QNetworkCacheMetaData|metaData|const QUrl &

$prototype=virtual QIODevice * prepare ( const QNetworkCacheMetaData & metaData )
$method=|QIODevice *|prepare|const QNetworkCacheMetaData &

$prototype=virtual bool remove ( const QUrl & url )
$method=|bool|remove|const QUrl &

$prototype=virtual void updateMetaData ( const QNetworkCacheMetaData & metaData )
$method=|void|updateMetaData|const QNetworkCacheMetaData &

$prototype=virtual void clear ()
$method=|void|clear|

#pragma ENDDUMP
