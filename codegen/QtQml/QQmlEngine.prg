%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QJSEngine

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>
#include <QNetworkAccessManager>
#include <QQmlContext>

$prototype=QQmlEngine(QObject * parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void addImageProvider(const QString & providerId, QQmlImageProviderBase * provider)
$method=|void|addImageProvider|const QString &,QQmlImageProviderBase *

$prototype=void addImportPath(const QString & path)
$method=|void|addImportPath|const QString &

$prototype=bool addNamedBundle(const QString & name, const QString & fileName)
$method=|bool|addNamedBundle|const QString &,const QString &

$prototype=void addPluginPath(const QString & path)
$method=|void|addPluginPath|const QString &

$prototype=QUrl baseUrl() const
$method=|QUrl|baseUrl|

$prototype=void clearComponentCache()
$method=|void|clearComponentCache|

$prototype=QQmlImageProviderBase * imageProvider(const QString & providerId) const
$method=|QQmlImageProviderBase *|imageProvider|const QString &

$prototype=QStringList importPathList() const
$method=|QStringList|importPathList|

$prototype=bool importPlugin(const QString & filePath, const QString & uri, QList<QQmlError> * errors)
%% TODO: implementar
%% $method=|bool|importPlugin|const QString &,const QString &,QList<QQmlError> *

$prototype=QQmlIncubationController * incubationController() const
$method=|QQmlIncubationController *|incubationController|

$prototype=QNetworkAccessManager * networkAccessManager() const
$method=|QNetworkAccessManager *|networkAccessManager|

$prototype=QQmlNetworkAccessManagerFactory * networkAccessManagerFactory() const
$method=|QQmlNetworkAccessManagerFactory *|networkAccessManagerFactory|

$prototype=QString offlineStoragePath() const
$method=|QString|offlineStoragePath|

$prototype=bool outputWarningsToStandardError() const
$method=|bool|outputWarningsToStandardError|

$prototype=QStringList pluginPathList() const
$method=|QStringList|pluginPathList|

$prototype=void removeImageProvider(const QString & providerId)
$method=|void|removeImageProvider|const QString &

$prototype=QQmlContext * rootContext() const
$method=|QQmlContext *|rootContext|

$prototype=void setBaseUrl(const QUrl & url)
$method=|void|setBaseUrl|const QUrl &

$prototype=void setImportPathList(const QStringList & paths)
$method=|void|setImportPathList|const QStringList &

$prototype=void setIncubationController(QQmlIncubationController * controller)
$method=|void|setIncubationController|QQmlIncubationController *

$prototype=void setNetworkAccessManagerFactory(QQmlNetworkAccessManagerFactory * factory)
$method=|void|setNetworkAccessManagerFactory|QQmlNetworkAccessManagerFactory *

$prototype=void setOfflineStoragePath(const QString & dir)
$method=|void|setOfflineStoragePath|const QString &

$prototype=void setOutputWarningsToStandardError(bool enabled)
$method=|void|setOutputWarningsToStandardError|bool

$prototype=void setPluginPathList(const QStringList & paths)
$method=|void|setPluginPathList|const QStringList &

$prototype=void trimComponentCache()
$method=|void|trimComponentCache|

$prototype=static QQmlContext * contextForObject(const QObject * object)
$staticMethod=|QQmlContext *|contextForObject|const QObject *

$prototype=static ObjectOwnership objectOwnership(QObject * object)
$staticMethod=|QQmlEngine::ObjectOwnership|objectOwnership|QObject *

$prototype=static void setContextForObject(QObject * object, QQmlContext * context)
$staticMethod=|void|setContextForObject|QObject *,QQmlContext *

$prototype=static void setObjectOwnership(QObject * object, ObjectOwnership ownership)
$staticMethod=|void|setObjectOwnership|QObject *,QQmlEngine::ObjectOwnership

$beginSignals
$signal=|quit()
$endSignals

#pragma ENDDUMP
