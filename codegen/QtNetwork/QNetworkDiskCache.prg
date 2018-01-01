%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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
$virtualMethod=|qint64|cacheSize|

$prototype=virtual QIODevice * data ( const QUrl & url )
$virtualMethod=|QIODevice *|data|const QUrl &

$prototype=virtual void insert ( QIODevice * device )
$virtualMethod=|void|insert|QIODevice *

$prototype=virtual QNetworkCacheMetaData metaData ( const QUrl & url )
$virtualMethod=|QNetworkCacheMetaData|metaData|const QUrl &

$prototype=virtual QIODevice * prepare ( const QNetworkCacheMetaData & metaData )
$virtualMethod=|QIODevice *|prepare|const QNetworkCacheMetaData &

$prototype=virtual bool remove ( const QUrl & url )
$virtualMethod=|bool|remove|const QUrl &

$prototype=virtual void updateMetaData ( const QNetworkCacheMetaData & metaData )
$virtualMethod=|void|updateMetaData|const QNetworkCacheMetaData &

$prototype=virtual void clear ()
$virtualMethod=|void|clear|

#pragma ENDDUMP
