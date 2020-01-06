%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractNetworkCache

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QIODevice>

$prototype=explicit QNetworkDiskCache(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=0

$prototype=~QNetworkDiskCache()
$deleteMethod

$prototype=QString cacheDirectory() const
$method=|QString|cacheDirectory|

$prototype=void setCacheDirectory(const QString &cacheDir)
$method=|void|setCacheDirectory|const QString &

$prototype=qint64 maximumCacheSize() const
$method=|qint64|maximumCacheSize|

$prototype=void setMaximumCacheSize(qint64 size)
$method=|void|setMaximumCacheSize|qint64

$prototype=qint64 cacheSize() const Q_DECL_OVERRIDE
$method=|qint64|cacheSize|

$prototype=QNetworkCacheMetaData metaData(const QUrl &url) Q_DECL_OVERRIDE
$method=|QNetworkCacheMetaData|metaData|const QUrl &

$prototype=void updateMetaData(const QNetworkCacheMetaData &metaData) Q_DECL_OVERRIDE
$method=|void|updateMetaData|const QNetworkCacheMetaData &

$prototype=QIODevice *data(const QUrl &url) Q_DECL_OVERRIDE
$method=|QIODevice *|data|const QUrl &

$prototype=bool remove(const QUrl &url) Q_DECL_OVERRIDE
$method=|bool|remove|const QUrl &

$prototype=QIODevice *prepare(const QNetworkCacheMetaData &metaData) Q_DECL_OVERRIDE
$method=|QIODevice *|prepare|const QNetworkCacheMetaData &

$prototype=void insert(QIODevice *device) Q_DECL_OVERRIDE
$method=|void|insert|QIODevice *

$prototype=QNetworkCacheMetaData fileMetaData(const QString &fileName) const
$method=|QNetworkCacheMetaData|fileMetaData|const QString &

$prototype=void clear() Q_DECL_OVERRIDE (slot)
$slotMethod=|void|clear|

$prototype=virtual qint64 expire() [protected]

#pragma ENDDUMP
