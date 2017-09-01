$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QDECLARATIVEIMAGEPROVIDER
REQUEST QNETWORKACCESSMANAGER
REQUEST QDECLARATIVENETWORKACCESSMANAGERFACTORY
REQUEST QDECLARATIVECONTEXT
#endif

CLASS QDeclarativeEngine INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addImageProvider
   METHOD addImportPath
   METHOD addPluginPath
   METHOD baseUrl
   METHOD clearComponentCache
   METHOD imageProvider
   METHOD importPathList
   METHOD networkAccessManager
   METHOD networkAccessManagerFactory
   METHOD offlineStoragePath
   METHOD outputWarningsToStandardError
   METHOD pluginPathList
   METHOD removeImageProvider
   METHOD rootContext
   METHOD setBaseUrl
   METHOD setImportPathList
   METHOD setNetworkAccessManagerFactory
   METHOD setOfflineStoragePath
   METHOD setOutputWarningsToStandardError
   METHOD setPluginPathList
   METHOD contextForObject
   METHOD objectOwnership
   METHOD setContextForObject
   METHOD setObjectOwnership

   METHOD onQuit
   METHOD onWarnings

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>

/*
QDeclarativeEngine ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
void addImageProvider ( const QString & providerId, QDeclarativeImageProvider * provider )
*/
$method=|void|addImageProvider|const QString &,QDeclarativeImageProvider *

/*
void addImportPath ( const QString & path )
*/
$method=|void|addImportPath|const QString &

/*
void addPluginPath ( const QString & path )
*/
$method=|void|addPluginPath|const QString &

/*
QUrl baseUrl () const
*/
$method=|QUrl|baseUrl|

/*
void clearComponentCache ()
*/
$method=|void|clearComponentCache|

/*
QDeclarativeImageProvider * imageProvider ( const QString & providerId ) const
*/
$method=|QDeclarativeImageProvider *|imageProvider|const QString &

/*
QStringList importPathList () const
*/
$method=|QStringList|importPathList|

/*
QNetworkAccessManager * networkAccessManager () const
*/
$method=|QNetworkAccessManager *|networkAccessManager|

/*
QDeclarativeNetworkAccessManagerFactory * networkAccessManagerFactory () const
*/
$method=|QDeclarativeNetworkAccessManagerFactory *|networkAccessManagerFactory|

/*
QString offlineStoragePath () const
*/
$method=|QString|offlineStoragePath|

/*
bool outputWarningsToStandardError () const
*/
$method=|bool|outputWarningsToStandardError|

/*
QStringList pluginPathList () const
*/
$method=|QStringList|pluginPathList|

/*
void removeImageProvider ( const QString & providerId )
*/
$method=|void|removeImageProvider|const QString &

/*
QDeclarativeContext * rootContext () const
*/
$method=|QDeclarativeContext *|rootContext|

/*
void setBaseUrl ( const QUrl & url )
*/
$method=|void|setBaseUrl|const QUrl &

/*
void setImportPathList ( const QStringList & paths )
*/
$method=|void|setImportPathList|const QStringList &

/*
void setNetworkAccessManagerFactory ( QDeclarativeNetworkAccessManagerFactory * factory )
*/
$method=|void|setNetworkAccessManagerFactory|QDeclarativeNetworkAccessManagerFactory *

/*
void setOfflineStoragePath ( const QString & dir )
*/
$method=|void|setOfflineStoragePath|const QString &

/*
void setOutputWarningsToStandardError ( bool enabled )
*/
$method=|void|setOutputWarningsToStandardError|bool

/*
void setPluginPathList ( const QStringList & paths )
*/
$method=|void|setPluginPathList|const QStringList &

/*
static QDeclarativeContext * contextForObject ( const QObject * object )
*/
$staticMethod=|QDeclarativeContext *|contextForObject|const QObject *

/*
static ObjectOwnership objectOwnership ( QObject * object )
*/
$staticMethod=|QDeclarativeEngine::ObjectOwnership|objectOwnership|QObject *

/*
static void setContextForObject ( QObject * object, QDeclarativeContext * context )
*/
$staticMethod=|void|setContextForObject|QObject *,QDeclarativeContext *

/*
static void setObjectOwnership ( QObject * object, ObjectOwnership ownership )
*/
$staticMethod=|void|setObjectOwnership|QObject *,QDeclarativeEngine::ObjectOwnership

#pragma ENDDUMP
