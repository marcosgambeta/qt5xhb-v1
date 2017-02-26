/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QHOSTADDRESS
REQUEST QWEBSOCKET
REQUEST QNETWORKPROXY
REQUEST QSSLCONFIGURATION
#endif

CLASS QWebSocketServer INHERIT QObject

   DATA class_id INIT Class_Id_QWebSocketServer
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD listen
   METHOD close
   METHOD isListening
   METHOD maxPendingConnections
   METHOD setMaxPendingConnections
   METHOD serverPort
   METHOD serverAddress
   METHOD secureMode
   METHOD socketDescriptor
   METHOD setSocketDescriptor
   METHOD hasPendingConnections
   METHOD nextPendingConnection
   METHOD error
   METHOD errorString
   METHOD pauseAccepting
   METHOD resumeAccepting
   METHOD serverName
   METHOD setServerName
   METHOD proxy
   METHOD setProxy
   METHOD setSslConfiguration
   METHOD sslConfiguration
   METHOD supportedVersions
   METHOD onAcceptError
   METHOD onServerError
   METHOD onOriginAuthenticationRequired
   METHOD onNewConnection
   METHOD onPeerVerifyError
   METHOD onSslErrors
   METHOD onClosed
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebSocketServer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QWebSocketServer>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QWebSocketServer>
#endif
#endif

#include <QNetworkProxy>

/*
explicit QWebSocketServer(const QString &serverName, SslMode secureMode, QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QString par1 = QLatin1String( hb_parc(1) );
  int par2 = hb_parni(2);
  QObject * par3 = ISNIL(3)? 0 : (QObject *) _qtxhb_itemGetPtr(3);
  QWebSocketServer * o = new QWebSocketServer ( par1,  (QWebSocketServer::SslMode) par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QWebSocketServer *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QWEBSOCKETSERVER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
bool listen(const QHostAddress &address = QHostAddress::Any, quint16 port = 0)
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_LISTEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHostAddress par1 = ISNIL(1)? QHostAddress::Any : *(QHostAddress *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->listen ( par1, (quint16) ISNIL(2)? 0 : hb_parni(2) ) );
  }
#endif
}


/*
void close()
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_CLOSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->close (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isListening() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_ISLISTENING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isListening (  ) );
  }
#endif
}


/*
int maxPendingConnections() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_MAXPENDINGCONNECTIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->maxPendingConnections (  ) );
  }
#endif
}

/*
void setMaxPendingConnections(int numConnections)
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SETMAXPENDINGCONNECTIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMaxPendingConnections ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
quint16 serverPort() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SERVERPORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->serverPort (  ) );
  }
#endif
}


/*
QHostAddress serverAddress() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SERVERADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHostAddress * ptr = new QHostAddress( obj->serverAddress (  ) );
    _qt4xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );
  }
#endif
}


/*
SslMode secureMode() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SECUREMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->secureMode (  ) );
  }
#endif
}


/*
int socketDescriptor() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SOCKETDESCRIPTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->socketDescriptor (  ) );
  }
#endif
}

/*
bool setSocketDescriptor(int socketDescriptor)
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SETSOCKETDESCRIPTOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->setSocketDescriptor ( (int) hb_parni(1) ) );
  }
#endif
}


/*
bool hasPendingConnections() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_HASPENDINGCONNECTIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasPendingConnections (  ) );
  }
#endif
}


/*
virtual QWebSocket *nextPendingConnection()
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_NEXTPENDINGCONNECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWebSocket * ptr = obj->nextPendingConnection (  );
    _qt4xhb_createReturnClass ( ptr, "QWEBSOCKET" );
  }
#endif
}


/*
QWebSocketProtocol::CloseCode error() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error (  ) );
  }
#endif
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_ERRORSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->errorString (  ).toLatin1().data() );
  }
#endif
}


/*
void pauseAccepting()
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_PAUSEACCEPTING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->pauseAccepting (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void resumeAccepting()
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_RESUMEACCEPTING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resumeAccepting (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString serverName() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SERVERNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->serverName (  ).toLatin1().data() );
  }
#endif
}

/*
void setServerName(const QString &serverName)
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SETSERVERNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setServerName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QNetworkProxy proxy() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_PROXY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkProxy * ptr = new QNetworkProxy( obj->proxy (  ) );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKPROXY", true );
  }
#endif
}

/*
void setProxy(const QNetworkProxy &networkProxy)
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SETPROXY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkProxy * par1 = (QNetworkProxy *) _qtxhb_itemGetPtr(1);
    obj->setProxy ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void setSslConfiguration(const QSslConfiguration &sslConfiguration)
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SETSSLCONFIGURATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSslConfiguration * par1 = (QSslConfiguration *) _qtxhb_itemGetPtr(1);
    obj->setSslConfiguration ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QSslConfiguration sslConfiguration() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SSLCONFIGURATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSslConfiguration * ptr = new QSslConfiguration( obj->sslConfiguration (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSSLCONFIGURATION", true );
  }
#endif
}


/*
QList<QWebSocketProtocol::Version> supportedVersions() const
*/
HB_FUNC_STATIC( QWEBSOCKETSERVER_SUPPORTEDVERSIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocketServer * obj = (QWebSocketServer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QWebSocketProtocol::Version> list = obj->supportedVersions (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}




#pragma ENDDUMP
