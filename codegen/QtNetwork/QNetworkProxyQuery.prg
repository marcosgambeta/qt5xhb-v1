%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QNetworkProxyQuery

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new8
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

#include <QUrl>

$prototype=QNetworkProxyQuery ()
$constructor=|new1|

$prototype=QNetworkProxyQuery ( const QUrl & requestUrl, QueryType queryType = UrlRequest )
$constructor=|new2|const QUrl &,QNetworkProxyQuery::QueryType=QNetworkProxyQuery::UrlRequest

$prototype=QNetworkProxyQuery ( const QString & hostname, int port, const QString & protocolTag = QString(), QueryType queryType = TcpSocket )
$constructor=|new3|const QString &,int,const QString &=QString(),QNetworkProxyQuery::QueryType=QNetworkProxyQuery::TcpSocket

$prototype=QNetworkProxyQuery ( quint16 bindPort, const QString & protocolTag = QString(), QueryType queryType = TcpServer )
$constructor=|new4|quint16,const QString &=QString(),QNetworkProxyQuery::QueryType=QNetworkProxyQuery::TcpServer

$prototype=QNetworkProxyQuery ( const QNetworkProxyQuery & other )
$constructor=|new5|const QNetworkProxyQuery &

$prototype=QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, const QUrl & requestUrl, QueryType queryType = UrlRequest )
$constructor=|new6|const QNetworkConfiguration &,const QUrl &,QNetworkProxyQuery::QueryType=QNetworkProxyQuery::UrlRequest

$prototype=QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, const QString & hostname, int port, const QString & protocolTag = QString(), QueryType queryType = TcpSocket )
$constructor=|new7|const QNetworkConfiguration &,const QString &,int,const QString &=QString(),QNetworkProxyQuery::QueryType=QNetworkProxyQuery::TcpSocket

$prototype=QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, quint16 bindPort, const QString & protocolTag = QString(), QueryType queryType = TcpServer )
$constructor=|new8|const QNetworkConfiguration &,quint16,const QString &=QString(),QNetworkProxyQuery::QueryType=QNetworkProxyQuery::TcpServer

//[1]QNetworkProxyQuery ()
//[2]QNetworkProxyQuery ( const QUrl & requestUrl, QueryType queryType = UrlRequest )
//[3]QNetworkProxyQuery ( const QString & hostname, int port, const QString & protocolTag = QString(), QueryType queryType = TcpSocket )
//[4]QNetworkProxyQuery ( quint16 bindPort, const QString & protocolTag = QString(), QueryType queryType = TcpServer )
//[5]QNetworkProxyQuery ( const QNetworkProxyQuery & other )
//[6]QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, const QUrl & requestUrl, QueryType queryType = UrlRequest )
//[7]QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, const QString & hostname, int port, const QString & protocolTag = QString(), QueryType queryType = TcpSocket )
//[8]QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, quint16 bindPort, const QString & protocolTag = QString(), QueryType queryType = TcpServer )

HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEW2 );
  }
  else if( ISBETWEEN(2,4) && ISCHAR(1) && ISNUM(2) && ISOPTCHAR(3) && ISOPTNUM(4) )
  {
    HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEW3 );
  }
  else if( ISBETWEEN(1,3) && ISNUM(1) && ISOPTCHAR(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQNETWORKPROXYQUERY(1) )
  {
    HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEW5 );
  }
  else if( ISBETWEEN(2,3) && ISQNETWORKCONFIGURATION(1) && ISQURL(2) && ISOPTNUM(3) )
  {
    HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEW6 );
  }
  else if( ISBETWEEN(3,5) && ISQNETWORKCONFIGURATION(1) && ISCHAR(2) && ISNUM(3) && ISOPTCHAR(4) && ISOPTNUM(5) )
  {
    HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEW7 );
  }
  else if( ISBETWEEN(2,4) && ISQNETWORKCONFIGURATION(1) && ISNUM(2) && ISOPTCHAR(3) && ISOPTNUM(4) )
  {
    HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEW8 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

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

$extraMethods

#pragma ENDDUMP
