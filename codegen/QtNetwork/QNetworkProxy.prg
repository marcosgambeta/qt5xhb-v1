%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

%% TODO:
%% #ifndef QT_NO_NETWORKPROXY
%% #endif // QT_NO_NETWORKPROXY

#include "hbclass.ch"

CLASS QNetworkProxy

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD applicationProxy
   METHOD capabilities
   METHOD hasRawHeader
   METHOD header
   METHOD hostName
   METHOD isCachingProxy
   METHOD isTransparentProxy
   METHOD password
   METHOD port
   METHOD rawHeader
   METHOD rawHeaderList
   METHOD setApplicationProxy
   METHOD setCapabilities
   METHOD setHeader
   METHOD setHostName
   METHOD setPassword
   METHOD setPort
   METHOD setRawHeader
   METHOD setType
   METHOD setUser
   METHOD swap
   METHOD type
   METHOD user

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QNetworkProxy ()
$internalConstructor=|new1|

$prototype=QNetworkProxy ( ProxyType type, const QString & hostName = QString(), quint16 port = 0, const QString & user = QString(), const QString & password = QString() )
$internalConstructor=|new2|QNetworkProxy::ProxyType,const QString &=QString(),quint16=0,const QString &=QString(),const QString &=QString()

$prototype=QNetworkProxy ( const QNetworkProxy & other )
$internalConstructor=|new3|const QNetworkProxy &

//[1]QNetworkProxy ()
//[2]QNetworkProxy ( ProxyType type, const QString & hostName = QString(), quint16 port = 0, const QString & user = QString(), const QString & password = QString() )
//[3]QNetworkProxy ( const QNetworkProxy & other )

HB_FUNC_STATIC( QNETWORKPROXY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QNetworkProxy_new1();
  }
  else if( ISBETWEEN(1,5) && ISNUM(1) && ISOPTCHAR(2) && ISOPTNUM(3) && ISOPTCHAR(4) && ISOPTCHAR(5) )
  {
    QNetworkProxy_new2();
  }
  else if( ISNUMPAR(1) && ISQNETWORKPROXY(1) )
  {
    QNetworkProxy_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QNetworkProxy()
$deleteMethod

$prototype=void setType ( QNetworkProxy::ProxyType type )
$method=|void|setType|QNetworkProxy::ProxyType

$prototype=QNetworkProxy::ProxyType type () const
$method=|QNetworkProxy::ProxyType|type|

$prototype=void setCapabilities ( Capabilities capabilities )
$method=|void|setCapabilities|QNetworkProxy::Capabilities

$prototype=Capabilities capabilities () const
$method=|QNetworkProxy::Capabilities|capabilities|

$prototype=bool isCachingProxy () const
$method=|bool|isCachingProxy|

$prototype=bool isTransparentProxy () const
$method=|bool|isTransparentProxy|

$prototype=void setUser ( const QString & userName )
$method=|void|setUser|const QString &

$prototype=QString user () const
$method=|QString|user|

$prototype=void setPassword ( const QString & password )
$method=|void|setPassword|const QString &

$prototype=QString password () const
$method=|QString|password|

$prototype=void setHostName ( const QString & hostName )
$method=|void|setHostName|const QString &

$prototype=QString hostName () const
$method=|QString|hostName|

$prototype=void setPort ( quint16 port )
$method=|void|setPort|quint16

$prototype=quint16 port () const
$method=|quint16|port|

$prototype=static void setApplicationProxy ( const QNetworkProxy & proxy )
$staticMethod=|void|setApplicationProxy|const QNetworkProxy &

$prototype=static QNetworkProxy applicationProxy ()
$staticMethod=|QNetworkProxy|applicationProxy|

$prototype=QVariant header(QNetworkRequest::KnownHeaders header) const
$method=|QVariant|header|QNetworkRequest::KnownHeaders

$prototype=void setHeader(QNetworkRequest::KnownHeaders header, const QVariant &value)
$method=|void|setHeader|QNetworkRequest::KnownHeaders,const QVariant &

$prototype=bool hasRawHeader(const QByteArray &headerName) const
$method=|bool|hasRawHeader|const QByteArray &

$prototype=QList<QByteArray> rawHeaderList() const
$method=|QList<QByteArray>|rawHeaderList|

$prototype=QByteArray rawHeader(const QByteArray &headerName) const
$method=|QByteArray|rawHeader|const QByteArray &

$prototype=void setRawHeader(const QByteArray &headerName, const QByteArray &value)
$method=|void|setRawHeader|const QByteArray &,const QByteArray &

$prototype=void swap(QNetworkProxy &other) Q_DECL_NOTHROW
$method=|void|swap|QNetworkProxy &

$extraMethods

#pragma ENDDUMP
