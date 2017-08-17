$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKCACHEMETADATA
REQUEST QIODEVICE
#endif

CLASS QNetworkDiskCache INHERIT QAbstractNetworkCache

   DATA self_destruction INIT .F.

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

/*
QNetworkDiskCache ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
QString cacheDirectory () const
*/
$method=|QString|cacheDirectory|

/*
QNetworkCacheMetaData fileMetaData ( const QString & fileName ) const
*/
$method=|QNetworkCacheMetaData|fileMetaData|const QString &

/*
qint64 maximumCacheSize () const
*/
$method=|qint64|maximumCacheSize|

/*
void setCacheDirectory ( const QString & cacheDir )
*/
$method=|void|setCacheDirectory|const QString &

/*
void setMaximumCacheSize ( qint64 size )
*/
$method=|void|setMaximumCacheSize|qint64

/*
virtual qint64 cacheSize () const
*/
$method=|qint64|cacheSize|

/*
virtual QIODevice * data ( const QUrl & url )
*/
$method=|QIODevice *|data|const QUrl &

/*
virtual void insert ( QIODevice * device )
*/
$method=|void|insert|QIODevice *

/*
virtual QNetworkCacheMetaData metaData ( const QUrl & url )
*/
$method=|QNetworkCacheMetaData|metaData|const QUrl &

/*
virtual QIODevice * prepare ( const QNetworkCacheMetaData & metaData )
*/
$method=|QIODevice *|prepare|const QNetworkCacheMetaData &

/*
virtual bool remove ( const QUrl & url )
*/
$method=|bool|remove|const QUrl &

/*
virtual void updateMetaData ( const QNetworkCacheMetaData & metaData )
*/
$method=|void|updateMetaData|const QNetworkCacheMetaData &

/*
virtual void clear ()
*/
$method=|void|clear|

#pragma ENDDUMP
