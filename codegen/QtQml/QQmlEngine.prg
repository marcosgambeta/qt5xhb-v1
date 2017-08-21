$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QQMLIMAGEPROVIDERBASE
REQUEST QQMLINCUBATIONCONTROLLER
REQUEST QNETWORKACCESSMANAGER
REQUEST QQMLNETWORKACCESSMANAGERFACTORY
REQUEST QQMLCONTEXT
#endif

CLASS QQmlEngine INHERIT QJSEngine

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addImageProvider
   METHOD addImportPath
   METHOD addNamedBundle
   METHOD addPluginPath
   METHOD baseUrl
   METHOD clearComponentCache
   METHOD imageProvider
   METHOD importPathList
   METHOD importPlugin
   METHOD incubationController
   METHOD networkAccessManager
   METHOD networkAccessManagerFactory
   METHOD offlineStoragePath
   METHOD outputWarningsToStandardError
   METHOD pluginPathList
   METHOD removeImageProvider
   METHOD rootContext
   METHOD setBaseUrl
   METHOD setImportPathList
   METHOD setIncubationController
   METHOD setNetworkAccessManagerFactory
   METHOD setOfflineStoragePath
   METHOD setOutputWarningsToStandardError
   METHOD setPluginPathList
   METHOD trimComponentCache
   METHOD contextForObject
   METHOD objectOwnership
   METHOD setContextForObject
   METHOD setObjectOwnership

   METHOD onQuit

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>

/*
QQmlEngine(QObject * parent = 0)
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
void addImageProvider(const QString & providerId, QQmlImageProviderBase * provider)
*/
$method=|void|addImageProvider|const QString &,QQmlImageProviderBase *

/*
void addImportPath(const QString & path)
*/
$method=|void|addImportPath|const QString &

/*
bool addNamedBundle(const QString & name, const QString & fileName)
*/
$method=|bool|addNamedBundle|const QString &,const QString &

/*
void addPluginPath(const QString & path)
*/
$method=|void|addPluginPath|const QString &

/*
QUrl baseUrl() const
*/
$method=|QUrl|baseUrl|

/*
void clearComponentCache()
*/
$method=|void|clearComponentCache|

/*
QQmlImageProviderBase * imageProvider(const QString & providerId) const
*/
$method=|QQmlImageProviderBase *|imageProvider|const QString &

/*
QStringList importPathList() const
*/
$method=|QStringList|importPathList|

/*
bool importPlugin(const QString & filePath, const QString & uri, QList<QQmlError> * errors)
*/
$method=|bool|importPlugin|const QString &,const QString &,QList<QQmlError> *

/*
QQmlIncubationController * incubationController() const
*/
$method=|QQmlIncubationController *|incubationController|

/*
QNetworkAccessManager * networkAccessManager() const
*/
$method=|QNetworkAccessManager *|networkAccessManager|

/*
QQmlNetworkAccessManagerFactory * networkAccessManagerFactory() const
*/
$method=|QQmlNetworkAccessManagerFactory *|networkAccessManagerFactory|

/*
QString offlineStoragePath() const
*/
$method=|QString|offlineStoragePath|

/*
bool outputWarningsToStandardError() const
*/
$method=|bool|outputWarningsToStandardError|

/*
QStringList pluginPathList() const
*/
$method=|QStringList|pluginPathList|

/*
void removeImageProvider(const QString & providerId)
*/
$method=|void|removeImageProvider|const QString &

/*
QQmlContext * rootContext() const
*/
$method=|QQmlContext *|rootContext|

/*
void setBaseUrl(const QUrl & url)
*/
$method=|void|setBaseUrl|const QUrl &

/*
void setImportPathList(const QStringList & paths)
*/
$method=|void|setImportPathList|const QStringList &

/*
void setIncubationController(QQmlIncubationController * controller)
*/
$method=|void|setIncubationController|QQmlIncubationController *

/*
void setNetworkAccessManagerFactory(QQmlNetworkAccessManagerFactory * factory)
*/
$method=|void|setNetworkAccessManagerFactory|QQmlNetworkAccessManagerFactory *

/*
void setOfflineStoragePath(const QString & dir)
*/
$method=|void|setOfflineStoragePath|const QString &

/*
void setOutputWarningsToStandardError(bool enabled)
*/
$method=|void|setOutputWarningsToStandardError|bool

/*
void setPluginPathList(const QStringList & paths)
*/
$method=|void|setPluginPathList|const QStringList &

/*
void trimComponentCache()
*/
$method=|void|trimComponentCache|

/*
static QQmlContext * contextForObject(const QObject * object)
*/
$staticMethod=|QQmlContext *|contextForObject|const QObject *

/*
static ObjectOwnership objectOwnership(QObject * object)
*/
$staticMethod=|QQmlEngine::ObjectOwnership|objectOwnership|QObject *

/*
static void setContextForObject(QObject * object, QQmlContext * context)
*/
$staticMethod=|void|setContextForObject|QObject *,QQmlContext *

/*
static void setObjectOwnership(QObject * object, ObjectOwnership ownership)
*/
$staticMethod=|void|setObjectOwnership|QObject *,QQmlEngine::ObjectOwnership

#pragma ENDDUMP
