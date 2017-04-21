/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QNetworkProxyQuery

   DATA pointer
   DATA class_id INIT Class_Id_QNetworkProxyQuery
   DATA class_flags INIT 0
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

PROCEDURE destroyObject () CLASS QNetworkProxyQuery
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QNetworkProxyQuery>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QNetworkProxyQuery>
#endif

#include <QUrl>

/*
QNetworkProxyQuery ()
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW1 )
{
  QNetworkProxyQuery * o = new QNetworkProxyQuery (  );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QNetworkProxyQuery ( const QUrl & requestUrl, QueryType queryType = UrlRequest )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW2 )
{
  QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) QNetworkProxyQuery::UrlRequest : hb_parni(2);
  QNetworkProxyQuery * o = new QNetworkProxyQuery ( *par1,  (QNetworkProxyQuery::QueryType) par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QNetworkProxyQuery ( const QString & hostname, int port, const QString & protocolTag = QString(), QueryType queryType = TcpSocket )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW3 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  int par2 = hb_parni(2);
  QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
  int par4 = ISNIL(4)? (int) QNetworkProxyQuery::TcpSocket : hb_parni(4);
  QNetworkProxyQuery * o = new QNetworkProxyQuery ( par1, par2, par3,  (QNetworkProxyQuery::QueryType) par4 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QNetworkProxyQuery ( quint16 bindPort, const QString & protocolTag = QString(), QueryType queryType = TcpServer )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW4 )
{
  quint16 par1 = hb_parni(1);
  QString par2 = ISNIL(2)? QString() : QLatin1String( hb_parc(2) );
  int par3 = ISNIL(3)? (int) QNetworkProxyQuery::TcpServer : hb_parni(3);
  QNetworkProxyQuery * o = new QNetworkProxyQuery ( par1, par2,  (QNetworkProxyQuery::QueryType) par3 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QNetworkProxyQuery ( const QNetworkProxyQuery & other )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW5 )
{
  QNetworkProxyQuery * par1 = (QNetworkProxyQuery *) _qt5xhb_itemGetPtr(1);
  QNetworkProxyQuery * o = new QNetworkProxyQuery ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, const QUrl & requestUrl, QueryType queryType = UrlRequest )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW6 )
{
  QNetworkConfiguration * par1 = (QNetworkConfiguration *) _qt5xhb_itemGetPtr(1);
  QUrl * par2 = (QUrl *) _qt5xhb_itemGetPtr(2);
  int par3 = ISNIL(3)? (int) QNetworkProxyQuery::UrlRequest : hb_parni(3);
  QNetworkProxyQuery * o = new QNetworkProxyQuery ( *par1, *par2,  (QNetworkProxyQuery::QueryType) par3 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, const QString & hostname, int port, const QString & protocolTag = QString(), QueryType queryType = TcpSocket )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW7 )
{
  QNetworkConfiguration * par1 = (QNetworkConfiguration *) _qt5xhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  int par3 = hb_parni(3);
  QString par4 = ISNIL(4)? QString() : QLatin1String( hb_parc(4) );
  int par5 = ISNIL(5)? (int) QNetworkProxyQuery::TcpSocket : hb_parni(5);
  QNetworkProxyQuery * o = new QNetworkProxyQuery ( *par1, par2, par3, par4,  (QNetworkProxyQuery::QueryType) par5 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, quint16 bindPort, const QString & protocolTag = QString(), QueryType queryType = TcpServer )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW8 )
{
  QNetworkConfiguration * par1 = (QNetworkConfiguration *) _qt5xhb_itemGetPtr(1);
  quint16 par2 = hb_parni(2);
  QString par3 = ISNIL(3)? QString() : QLatin1String( hb_parc(3) );
  int par4 = ISNIL(4)? (int) QNetworkProxyQuery::TcpServer : hb_parni(4);
  QNetworkProxyQuery * o = new QNetworkProxyQuery ( *par1, par2, par3,  (QNetworkProxyQuery::QueryType) par4 );
  _qt5xhb_storePointerAndFlag( o, true );
}


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

HB_FUNC_STATIC( QNETWORKPROXYQUERY_DELETE )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
int localPort () const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_LOCALPORT )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->localPort (  ) );
  }
}


/*
QString peerHostName () const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_PEERHOSTNAME )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->peerHostName (  ).toLatin1().data() );
  }
}


/*
int peerPort () const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_PEERPORT )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->peerPort (  ) );
  }
}


/*
QString protocolTag () const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_PROTOCOLTAG )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->protocolTag (  ).toLatin1().data() );
  }
}


/*
QueryType queryType () const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_QUERYTYPE )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->queryType (  ) );
  }
}


/*
void setLocalPort ( int port )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETLOCALPORT )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLocalPort ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPeerHostName ( const QString & hostname )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETPEERHOSTNAME )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setPeerHostName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPeerPort ( int port )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETPEERPORT )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPeerPort ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setProtocolTag ( const QString & protocolTag )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETPROTOCOLTAG )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setProtocolTag ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setQueryType ( QueryType type )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETQUERYTYPE )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setQueryType (  (QNetworkProxyQuery::QueryType) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUrl ( const QUrl & url )
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETURL )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    obj->setUrl ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QUrl url () const
*/
HB_FUNC_STATIC( QNETWORKPROXYQUERY_URL )
{
  QNetworkProxyQuery * obj = (QNetworkProxyQuery *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url (  ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}



HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QNETWORKPROXYQUERY_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKPROXYQUERY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QNETWORKPROXYQUERY_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
