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

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

$beginClass

   METHOD new
   METHOD delete

   METHOD localPort
   METHOD peerHostName
   METHOD peerPort
   METHOD protocolTag
   METHOD queryType
   METHOD setLocalPort
   METHOD setPeerHostName
   METHOD setPeerPort
   METHOD setProtocolTag
   METHOD setQueryType
   METHOD setUrl
   METHOD url
   METHOD swap
%% #if !defined(QT_NO_BEARERMANAGEMENT) && QT_DEPRECATED_SINCE(5, 10)
   METHOD networkConfiguration
   METHOD setNetworkConfiguration
%% #endif

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QUrl>
#include <QNetworkConfiguration>

$prototype=QNetworkProxyQuery ()
$internalConstructor=|new1|

$prototype=explicit QNetworkProxyQuery ( const QUrl & requestUrl, QueryType queryType = UrlRequest )
$internalConstructor=|new2|const QUrl &,QNetworkProxyQuery::QueryType=QNetworkProxyQuery::UrlRequest

$prototype=QNetworkProxyQuery ( const QString & hostname, int port, const QString & protocolTag = QString(), QueryType queryType = TcpSocket )
$internalConstructor=|new3|const QString &,int,const QString &=QString(),QNetworkProxyQuery::QueryType=QNetworkProxyQuery::TcpSocket

$prototype=explicit QNetworkProxyQuery ( quint16 bindPort, const QString & protocolTag = QString(), QueryType queryType = TcpServer )
$internalConstructor=|new4|quint16,const QString &=QString(),QNetworkProxyQuery::QueryType=QNetworkProxyQuery::TcpServer

$prototype=QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, const QUrl & requestUrl, QueryType queryType = UrlRequest )
$internalConstructor=|new5|const QNetworkConfiguration &,const QUrl &,QNetworkProxyQuery::QueryType=QNetworkProxyQuery::UrlRequest

$prototype=QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, const QString & hostname, int port, const QString & protocolTag = QString(), QueryType queryType = TcpSocket )
$internalConstructor=|new6|const QNetworkConfiguration &,const QString &,int,const QString &=QString(),QNetworkProxyQuery::QueryType=QNetworkProxyQuery::TcpSocket

$prototype=QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, quint16 bindPort, const QString & protocolTag = QString(), QueryType queryType = TcpServer )
$internalConstructor=|new7|const QNetworkConfiguration &,quint16,const QString &=QString(),QNetworkProxyQuery::QueryType=QNetworkProxyQuery::TcpServer

$prototype=QNetworkProxyQuery ( const QNetworkProxyQuery & other )
$internalConstructor=|new8|const QNetworkProxyQuery &

//[1]QNetworkProxyQuery()
//[2]explicit QNetworkProxyQuery(const QUrl &requestUrl, QueryType queryType = UrlRequest)
//[3]QNetworkProxyQuery(const QString &hostname, int port, const QString &protocolTag = QString(), QueryType queryType = TcpSocket)
//[4]explicit QNetworkProxyQuery(quint16 bindPort, const QString &protocolTag = QString(), QueryType queryType = TcpServer)
%% #if !defined(QT_NO_BEARERMANAGEMENT) && QT_DEPRECATED_SINCE(5, 10)
//[5]QNetworkProxyQuery(const QNetworkConfiguration &networkConfiguration, const QUrl &requestUrl, QueryType queryType = UrlRequest)
//[6]QNetworkProxyQuery(const QNetworkConfiguration &networkConfiguration, const QString &hostname, int port, const QString &protocolTag = QString(), QueryType queryType = TcpSocket)
//[7]QNetworkProxyQuery(const QNetworkConfiguration &networkConfiguration, quint16 bindPort, const QString &protocolTag = QString(), QueryType queryType = TcpServer)
%% #endif
//[8]QNetworkProxyQuery(const QNetworkProxyQuery &other)

HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QNetworkProxyQuery_new1();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && ISOPTNUM(2) )
  {
    QNetworkProxyQuery_new2();
  }
  else if( ISBETWEEN(2,4) && ISCHAR(1) && ISNUM(2) && ISOPTCHAR(3) && ISOPTNUM(4) )
  {
    QNetworkProxyQuery_new3();
  }
  else if( ISBETWEEN(1,3) && ISNUM(1) && ISOPTCHAR(2) && ISOPTNUM(3) )
  {
    QNetworkProxyQuery_new4();
  }
  else if( ISBETWEEN(2,3) && ISQNETWORKCONFIGURATION(1) && ISQURL(2) && ISOPTNUM(3) )
  {
    QNetworkProxyQuery_new5();
  }
  else if( ISBETWEEN(3,5) && ISQNETWORKCONFIGURATION(1) && ISCHAR(2) && ISNUM(3) && ISOPTCHAR(4) && ISOPTNUM(5) )
  {
    QNetworkProxyQuery_new6();
  }
  else if( ISBETWEEN(2,4) && ISQNETWORKCONFIGURATION(1) && ISNUM(2) && ISOPTCHAR(3) && ISOPTNUM(4) )
  {
    QNetworkProxyQuery_new7();
  }
  else if( ISNUMPAR(1) && ISQNETWORKPROXYQUERY(1) )
  {
    QNetworkProxyQuery_new8();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QNetworkProxyQuery()
$deleteMethod

$prototype=int localPort () const
$method=|int|localPort|

$prototype=QString peerHostName () const
$method=|QString|peerHostName|

$prototype=int peerPort () const
$method=|int|peerPort|

$prototype=QString protocolTag () const
$method=|QString|protocolTag|

$prototype=QueryType queryType () const
$method=|QNetworkProxyQuery::QueryType|queryType|

$prototype=void setLocalPort ( int port )
$method=|void|setLocalPort|int

$prototype=void setPeerHostName ( const QString & hostname )
$method=|void|setPeerHostName|const QString &

$prototype=void setPeerPort ( int port )
$method=|void|setPeerPort|int

$prototype=void setProtocolTag ( const QString & protocolTag )
$method=|void|setProtocolTag|const QString &

$prototype=void setQueryType ( QueryType type )
$method=|void|setQueryType|QNetworkProxyQuery::QueryType

$prototype=void setUrl ( const QUrl & url )
$method=|void|setUrl|const QUrl &

$prototype=QUrl url () const
$method=|QUrl|url|

$prototype=void swap(QNetworkProxyQuery &other) Q_DECL_NOTHROW
$method=|void|swap|QNetworkProxyQuery &

%% #if !defined(QT_NO_BEARERMANAGEMENT) && QT_DEPRECATED_SINCE(5, 10)

$prototype=QNetworkConfiguration networkConfiguration() const
$method=|QNetworkConfiguration|networkConfiguration|

$prototype=void setNetworkConfiguration(const QNetworkConfiguration &networkConfiguration)
$method=|void|setNetworkConfiguration|const QNetworkConfiguration &

%% #endif

$extraMethods

#pragma ENDDUMP
