%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
REQUEST QABSTRACTNETWORKCACHE
REQUEST QNETWORKCOOKIEJAR
REQUEST QNETWORKREPLY
REQUEST QNETWORKPROXY
REQUEST QNETWORKPROXYFACTORY
#endif

CLASS QNetworkAccessManager INHERIT QObject

   METHOD new
   METHOD delete

   METHOD supportedSchemes
   METHOD clearAccessCache
   METHOD clearConnectionCache
%% #ifndef QT_NO_NETWORKPROXY
   METHOD proxy
   METHOD setProxy
   METHOD proxyFactory
   METHOD setProxyFactory
%% #endif
   METHOD cache
   METHOD setCache
   METHOD cookieJar
   METHOD setCookieJar
   METHOD setStrictTransportSecurityEnabled
   METHOD isStrictTransportSecurityEnabled
   METHOD enableStrictTransportSecurityStore
   METHOD isStrictTransportSecurityStoreEnabled
   METHOD addStrictTransportSecurityHosts
   METHOD strictTransportSecurityHosts
   METHOD head
   METHOD get
   METHOD post
   METHOD put
   METHOD deleteResource
   METHOD sendCustomRequest
%% #ifndef QT_NO_BEARERMANAGEMENT
   METHOD setConfiguration
   METHOD configuration
   METHOD activeConfiguration
   METHOD setNetworkAccessible
   METHOD networkAccessible
%% #endif
%% #ifndef QT_NO_SSL
   METHOD connectToHostEncrypted
%% #endif
   METHOD connectToHost
   METHOD setRedirectPolicy
   METHOD redirectPolicy
   METHOD createRequest

%% #ifndef QT_NO_NETWORKPROXY
   METHOD onProxyAuthenticationRequired
%% #endif
   METHOD onAuthenticationRequired
   METHOD onFinished
%% #ifndef QT_NO_SSL
   METHOD onEncrypted
   METHOD onSslErrors
   METHOD onPreSharedKeyAuthenticationRequired
%% #endif
%% #ifndef QT_NO_BEARERMANAGEMENT
   METHOD onNetworkSessionConnected
   METHOD onNetworkAccessibleChanged
%% #endif

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QNetworkConfiguration>
#include <QNetworkProxy>
#include <QSslError>
#include <QList>
#include <QAbstractNetworkCache>
#include <QNetworkCookieJar>
#include <QNetworkReply>

$prototype=explicit QNetworkAccessManager(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=0

$prototype=~QNetworkAccessManager()
$deleteMethod

%% #ifndef QT_NO_BEARERMANAGEMENT
%% Q_PROPERTY(NetworkAccessibility networkAccessible READ networkAccessible WRITE setNetworkAccessible NOTIFY networkAccessibleChanged)
%% #endif

%% #ifndef QT_NO_BEARERMANAGEMENT

$prototype=NetworkAccessibility networkAccessible() const
$method=|NetworkAccessibility|networkAccessible|

$prototype=void setNetworkAccessible(NetworkAccessibility accessible)
$method=|void|setNetworkAccessible|NetworkAccessibility

%% #endif

%%
%%
%%

$prototype=QStringList supportedSchemes() const
$method=|QStringList|supportedSchemes|

$prototype=void clearAccessCache()
$method=|void|clearAccessCache|

$prototype=void clearConnectionCache()
$method=|void|clearConnectionCache|

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
$method=|void|setStrictTransportSecurityEnabled|bool

$prototype=bool isStrictTransportSecurityEnabled() const
$method=|bool|isStrictTransportSecurityEnabled|

$prototype=void enableStrictTransportSecurityStore(bool enabled, const QString &storeDir = QString())
$method=|void|enableStrictTransportSecurityStore|bool,const QString &=QString()

$prototype=bool isStrictTransportSecurityStoreEnabled() const
$method=|bool|isStrictTransportSecurityStoreEnabled|

$prototype=void addStrictTransportSecurityHosts(const QVector<QHstsPolicy> &knownHosts)
$method=|void|addStrictTransportSecurityHosts|const QVector<QHstsPolicy> &

$prototype=QVector<QHstsPolicy> strictTransportSecurityHosts() const
$method=|QVector<QHstsPolicy>|strictTransportSecurityHosts|

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

$prototype=QNetworkReply *deleteResource(const QNetworkRequest &request)
$method=|QNetworkReply *|deleteResource|const QNetworkRequest &

$prototype=QNetworkReply *sendCustomRequest(const QNetworkRequest &request, const QByteArray &verb, QIODevice *data = Q_NULLPTR)
$internalMethod=|QNetworkReply *|sendCustomRequest,sendCustomRequest1|const QNetworkRequest &,const QByteArray &,QIODevice *=0

$prototype=QNetworkReply *sendCustomRequest(const QNetworkRequest &request, const QByteArray &verb, const QByteArray &data)
$internalMethod=|QNetworkReply *|sendCustomRequest,sendCustomRequest2|const QNetworkRequest &,const QByteArray &,const QByteArray &

$prototype=QNetworkReply *sendCustomRequest(const QNetworkRequest &request, const QByteArray &verb, QHttpMultiPart *multiPart)
$internalMethod=|QNetworkReply *|sendCustomRequest,sendCustomRequest3|const QNetworkRequest &,const QByteArray &,QHttpMultiPart *

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
$method=|void|connectToHostEncrypted|const QString &,quint16=443,const QSslConfiguration &=QSslConfiguration::defaultConfiguration()

%% #endif

$prototype=void connectToHost(const QString &hostName, quint16 port = 80)
$method=|void|connectToHost|const QString &,quint16=80

$prototype=void setRedirectPolicy(QNetworkRequest::RedirectPolicy policy)
$method=|void|setRedirectPolicy|QNetworkRequest::RedirectPolicy

$prototype=QNetworkRequest::RedirectPolicy redirectPolicy() const
$method=|void|setRedirectPolicy|QNetworkRequest::RedirectPolicy

$prototype=virtual QNetworkReply *createRequest(Operation op, const QNetworkRequest &request, QIODevice *outgoingData = Q_NULLPTR) (protected)

$prototype=QStringList supportedSchemesImplementation() const (protected) (slot)

#pragma ENDDUMP
