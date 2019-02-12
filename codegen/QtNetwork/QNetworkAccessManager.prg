%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods
%% #ifndef QT_NO_NETWORKPROXY
%%   METHOD proxy
%%   METHOD setProxy
%%   METHOD proxyFactory
%%   METHOD setProxyFactory
%% #endif
%% #ifndef QT_NO_BEARERMANAGEMENT
%%   METHOD setConfiguration
%%   METHOD configuration
%%   METHOD activeConfiguration
%%   METHOD setNetworkAccessible
%%   METHOD networkAccessible
%% #endif
%% #ifndef QT_NO_SSL
%%   METHOD connectToHostEncrypted
%% #endif

$addSignals

%% #ifndef QT_NO_NETWORKPROXY
%%   METHOD onProxyAuthenticationRequired
%% #endif
%% #ifndef QT_NO_SSL
%%   METHOD onEncrypted
%%   METHOD onSslErrors
%%   METHOD onPreSharedKeyAuthenticationRequired
%% #endif
%% #ifndef QT_NO_BEARERMANAGEMENT
%%   METHOD onNetworkSessionConnected
%%   METHOD onNetworkAccessibleChanged
%% #endif

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtNetwork/QNetworkConfiguration>
#include <QtNetwork/QNetworkProxy>
#include <QtNetwork/QSslError>
#include <QtCore/QList>
#include <QtNetwork/QAbstractNetworkCache>
#include <QtNetwork/QNetworkCookieJar>
#include <QtNetwork/QNetworkReply>
#if (QT_VERSION >= QT_VERSION_CHECK(5,9,0))
#include <QtNetwork/QHstsPolicy>
#endif
$prototype=explicit QNetworkAccessManager(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=0

$prototype=~QNetworkAccessManager()
$deleteMethod

%% #ifndef QT_NO_BEARERMANAGEMENT
%% Q_PROPERTY(NetworkAccessibility networkAccessible READ networkAccessible WRITE setNetworkAccessible NOTIFY networkAccessibleChanged)
%% #endif

%% #ifndef QT_NO_BEARERMANAGEMENT

$prototype=NetworkAccessibility networkAccessible() const
$method=|QNetworkAccessManager::NetworkAccessibility|networkAccessible|

$prototype=void setNetworkAccessible(NetworkAccessibility accessible)
$method=|void|setNetworkAccessible|QNetworkAccessManager::NetworkAccessibility

%% #endif

%%
%%
%%

$prototype=QStringList supportedSchemes() const
$method=5,2,0|QStringList|supportedSchemes|

$prototype=void clearAccessCache()
$method=|void|clearAccessCache|

$prototype=void clearConnectionCache()
$method=5,9,0|void|clearConnectionCache|

%% #ifndef QT_NO_NETWORKPROXY

$prototype=QNetworkProxy proxy() const
$method=|QNetworkProxy|proxy|

$prototype=void setProxy(const QNetworkProxy &proxy)
$method=|void|setProxy|const QNetworkProxy &

$prototype=QNetworkProxyFactory *proxyFactory() const
$method=|QNetworkProxyFactory *|proxyFactory|

$prototype=void setProxyFactory(QNetworkProxyFactory *factory)
$method=|void|setProxyFactory|QNetworkProxyFactory *

%% #endif

$prototype=QAbstractNetworkCache *cache() const
$method=|QAbstractNetworkCache *|cache|

$prototype=void setCache(QAbstractNetworkCache *cache)
$method=|void|setCache|QAbstractNetworkCache *

$prototype=QNetworkCookieJar *cookieJar() const
$method=|QNetworkCookieJar *|cookieJar|

$prototype=void setCookieJar(QNetworkCookieJar *cookieJar)
$method=|void|setCookieJar|QNetworkCookieJar *

$prototype=void setStrictTransportSecurityEnabled(bool enabled)
$method=5,9,0|void|setStrictTransportSecurityEnabled|bool

$prototype=bool isStrictTransportSecurityEnabled() const
$method=5,9,0|bool|isStrictTransportSecurityEnabled|

$prototype=void enableStrictTransportSecurityStore(bool enabled, const QString &storeDir = QString())
$method=5,10,0|void|enableStrictTransportSecurityStore|bool,const QString &=QString()

$prototype=bool isStrictTransportSecurityStoreEnabled() const
$method=5,10,0|bool|isStrictTransportSecurityStoreEnabled|

$prototype=void addStrictTransportSecurityHosts(const QVector<QHstsPolicy> &knownHosts)
$method=5,9,0|void|addStrictTransportSecurityHosts|const QVector<QHstsPolicy> &

$prototype=QVector<QHstsPolicy> strictTransportSecurityHosts() const
$method=5,9,0|QVector<QHstsPolicy>|strictTransportSecurityHosts|

$prototype=QNetworkReply *head(const QNetworkRequest &request)
$method=|QNetworkReply *|head|const QNetworkRequest &

$prototype=QNetworkReply *get(const QNetworkRequest &request)
$method=|QNetworkReply *|get|const QNetworkRequest &

$prototype=QNetworkReply *post(const QNetworkRequest &request, QIODevice *data)
$internalMethod=|QNetworkReply *|post,post1|const QNetworkRequest &,QIODevice *

$prototype=QNetworkReply *post(const QNetworkRequest &request, const QByteArray &data)
$internalMethod=|QNetworkReply *|post,post2|const QNetworkRequest &,const QByteArray &

$prototype=QNetworkReply *post(const QNetworkRequest &request, QHttpMultiPart *multiPart)
$internalMethod=|QNetworkReply *|post,post3|const QNetworkRequest &,QHttpMultiPart *

//[1]QNetworkReply *post(const QNetworkRequest &request, QIODevice *data)
//[2]QNetworkReply *post(const QNetworkRequest &request, const QByteArray &data)
//[3]QNetworkReply *post(const QNetworkRequest &request, QHttpMultiPart *multiPart)

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_POST )
{
  if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQIODEVICE(2) )
  {
    QNetworkAccessManager_post1();
  }
  else if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQBYTEARRAY(2) )
  {
    QNetworkAccessManager_post2();
  }
  else if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQHTTPMULTIPART(2) )
  {
    QNetworkAccessManager_post3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=post

$prototype=QNetworkReply *put(const QNetworkRequest &request, QIODevice *data)
$internalMethod=|QNetworkReply *|put,put1|const QNetworkRequest &,QIODevice *

$prototype=QNetworkReply *put(const QNetworkRequest &request, const QByteArray &data)
$internalMethod=|QNetworkReply *|put,put2|const QNetworkRequest &,const QByteArray &

$prototype=QNetworkReply *put(const QNetworkRequest &request, QHttpMultiPart *multiPart)
$internalMethod=|QNetworkReply *|put,put3|const QNetworkRequest &,QHttpMultiPart *

//[1]QNetworkReply *put(const QNetworkRequest &request, QIODevice *data)
//[2]QNetworkReply *put(const QNetworkRequest &request, const QByteArray &data)
//[3]QNetworkReply *put(const QNetworkRequest &request, QHttpMultiPart *multiPart)

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_PUT )
{
  if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQIODEVICE(2) )
  {
    QNetworkAccessManager_put1();
  }
  else if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQBYTEARRAY(2) )
  {
    QNetworkAccessManager_put2();
  }
  else if( ISNUMPAR(2) && ISQNETWORKREQUEST(1) && ISQHTTPMULTIPART(2) )
  {
    QNetworkAccessManager_put3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=put

$prototype=QNetworkReply *deleteResource(const QNetworkRequest &request)
$method=|QNetworkReply *|deleteResource|const QNetworkRequest &

$prototype=QNetworkReply *sendCustomRequest(const QNetworkRequest &request, const QByteArray &verb, QIODevice *data = Q_NULLPTR)
$internalMethod=|QNetworkReply *|sendCustomRequest,sendCustomRequest1|const QNetworkRequest &,const QByteArray &,QIODevice *=0

$prototype=QNetworkReply *sendCustomRequest(const QNetworkRequest &request, const QByteArray &verb, const QByteArray &data)
$internalMethod=5,8,0|QNetworkReply *|sendCustomRequest,sendCustomRequest2|const QNetworkRequest &,const QByteArray &,const QByteArray &

$prototype=QNetworkReply *sendCustomRequest(const QNetworkRequest &request, const QByteArray &verb, QHttpMultiPart *multiPart)
$internalMethod=5,8,0|QNetworkReply *|sendCustomRequest,sendCustomRequest3|const QNetworkRequest &,const QByteArray &,QHttpMultiPart *

//[1]QNetworkReply *sendCustomRequest(const QNetworkRequest &request, const QByteArray &verb, QIODevice *data = Q_NULLPTR)
//[2]QNetworkReply *sendCustomRequest(const QNetworkRequest &request, const QByteArray &verb, const QByteArray &data)
//[3]QNetworkReply *sendCustomRequest(const QNetworkRequest &request, const QByteArray &verb, QHttpMultiPart *multiPart)

HB_FUNC_STATIC( QNETWORKACCESSMANAGER_SENDCUSTOMREQUEST )
{
  if( ISBETWEEN(2,3) && ISQNETWORKREQUEST(1) && ISQBYTEARRAY(2) && (ISQIODEVICE(3)||ISNIL(3)) )
  {
    QNetworkAccessManager_sendCustomRequest1();
  }
  else if( ISBETWEEN(2,3) && ISQNETWORKREQUEST(1) && ISQBYTEARRAY(2) && (ISQBYTEARRAY(3)||ISNIL(3)) )
  {
    QNetworkAccessManager_sendCustomRequest2();
  }
  else if( ISBETWEEN(2,3) && ISQNETWORKREQUEST(1) && ISQBYTEARRAY(2) && (ISQHTTPMULTIPART(3)||ISNIL(3)) )
  {
    QNetworkAccessManager_sendCustomRequest3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=sendCustomRequest

%% #ifndef QT_NO_BEARERMANAGEMENT

$prototype=void setConfiguration(const QNetworkConfiguration &config)
$method=|void|setConfiguration|const QNetworkConfiguration &

$prototype=QNetworkConfiguration configuration() const
$method=|QNetworkConfiguration|configuration|

$prototype=QNetworkConfiguration activeConfiguration() const
$method=|QNetworkConfiguration|activeConfiguration|

%% #endif

%% #ifndef QT_NO_SSL

$prototype=void connectToHostEncrypted(const QString &hostName, quint16 port = 443, const QSslConfiguration &sslConfiguration = QSslConfiguration::defaultConfiguration())
$method=5,2,0|void|connectToHostEncrypted|const QString &,quint16=443,const QSslConfiguration &=QSslConfiguration::defaultConfiguration()

%% #endif

$prototype=void connectToHost(const QString &hostName, quint16 port = 80)
$method=5,2,0|void|connectToHost|const QString &,quint16=80

$prototype=void setRedirectPolicy(QNetworkRequest::RedirectPolicy policy)
$method=5,9,0|void|setRedirectPolicy|QNetworkRequest::RedirectPolicy

$prototype=QNetworkRequest::RedirectPolicy redirectPolicy() const
$method=5,9,0|QNetworkRequest::RedirectPolicy|redirectPolicy|

$prototype=virtual QNetworkReply *createRequest(Operation op, const QNetworkRequest &request, QIODevice *outgoingData = Q_NULLPTR) [protected]

$prototype=QStringList supportedSchemesImplementation() const [protected] (slot) (5,2,0)

$beginSignals
%% #ifndef QT_NO_NETWORKPROXY
$signal=|proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)
%% #endif
$signal=|authenticationRequired(QNetworkReply*,QAuthenticator*)
$signal=|finished(QNetworkReply*)
%% #ifndef QT_NO_SSL
$signal=5,1,0|encrypted(QNetworkReply*)
$signal=|sslErrors(QNetworkReply*,QList<QSslError>)
$signal=5,5,0|preSharedKeyAuthenticationRequired(QNetworkReply*,QSslPreSharedKeyAuthenticator*)
%% #endif
%% #ifndef QT_NO_BEARERMANAGEMENT
$signal=|networkSessionConnected()
$signal=|networkAccessibleChanged(QNetworkAccessManager::NetworkAccessibility)
%% #endif
$endSignals

#pragma ENDDUMP
