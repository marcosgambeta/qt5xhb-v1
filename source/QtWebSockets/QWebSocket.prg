/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHOSTADDRESS
REQUEST QNETWORKPROXY
REQUEST QMASKGENERATOR
REQUEST QURL
REQUEST QSSLCONFIGURATION
#endif

CLASS QWebSocket INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD abort
   METHOD error
   METHOD errorString
   METHOD flush
   METHOD isValid
   METHOD localAddress
   METHOD localPort
   METHOD pauseMode
   METHOD peerAddress
   METHOD peerName
   METHOD peerPort
   METHOD proxy
   METHOD setProxy
   METHOD maskGenerator
   METHOD setMaskGenerator
   METHOD readBufferSize
   METHOD setReadBufferSize
   METHOD resume
   METHOD setPauseMode
   METHOD state
   METHOD version
   METHOD resourceName
   METHOD requestUrl
   METHOD origin
   METHOD closeCode
   METHOD closeReason
   METHOD sendTextMessage
   METHOD sendBinaryMessage
   METHOD ignoreSslErrors1
   METHOD ignoreSslErrors2
   METHOD ignoreSslErrors
   METHOD sslConfiguration
   METHOD setSslConfiguration
   METHOD close
   METHOD open
   METHOD ping

   METHOD onAboutToClose
   METHOD onConnected
   METHOD onDisconnected
   METHOD onStateChanged
   METHOD onProxyAuthenticationRequired
   METHOD onReadChannelFinished
   METHOD onTextFrameReceived
   METHOD onBinaryFrameReceived
   METHOD onTextMessageReceived
   METHOD onBinaryMessageReceived
   METHOD onError
   METHOD onPong
   METHOD onBytesWritten
   METHOD onSslErrors

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebSocket
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QWebSocket>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QWebSocket>
#endif
#endif

/*
explicit QWebSocket(const QString &origin = QString(),QWebSocketProtocol::Version version = QWebSocketProtocol::VersionLatest,QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QWEBSOCKET_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  int par2 = ISNIL(2)? (int) QWebSocketProtocol::VersionLatest : hb_parni(2);
  QObject * par3 = ISNIL(3)? 0 : (QObject *) _qt5xhb_itemGetPtr(3);
  QWebSocket * o = new QWebSocket ( OPQSTRING(1,QString()),  (QWebSocketProtocol::Version) par2, par3 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QWEBSOCKET_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void abort()
*/
HB_FUNC_STATIC( QWEBSOCKET_ABORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->abort ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QAbstractSocket::SocketError error() const
*/
HB_FUNC_STATIC( QWEBSOCKET_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
#endif
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QWEBSOCKET_ERRORSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->errorString () ) );
  }
#endif
}


/*
bool flush()
*/
HB_FUNC_STATIC( QWEBSOCKET_FLUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->flush () );
  }
#endif
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QWEBSOCKET_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid () );
  }
#endif
}


/*
QHostAddress localAddress() const
*/
HB_FUNC_STATIC( QWEBSOCKET_LOCALADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHostAddress * ptr = new QHostAddress( obj->localAddress () );
    _qt5xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );
  }
#endif
}


/*
quint16 localPort() const
*/
HB_FUNC_STATIC( QWEBSOCKET_LOCALPORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->localPort () );
  }
#endif
}


/*
QAbstractSocket::PauseModes pauseMode() const
*/
HB_FUNC_STATIC( QWEBSOCKET_PAUSEMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->pauseMode () );
  }
#endif
}


/*
QHostAddress peerAddress() const
*/
HB_FUNC_STATIC( QWEBSOCKET_PEERADDRESS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QHostAddress * ptr = new QHostAddress( obj->peerAddress () );
    _qt5xhb_createReturnClass ( ptr, "QHOSTADDRESS", true );
  }
#endif
}


/*
QString peerName() const
*/
HB_FUNC_STATIC( QWEBSOCKET_PEERNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->peerName () ) );
  }
#endif
}


/*
quint16 peerPort() const
*/
HB_FUNC_STATIC( QWEBSOCKET_PEERPORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->peerPort () );
  }
#endif
}


/*
QNetworkProxy proxy() const
*/
HB_FUNC_STATIC( QWEBSOCKET_PROXY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkProxy * ptr = new QNetworkProxy( obj->proxy () );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKPROXY", true );
  }
#endif
}

/*
void setProxy(const QNetworkProxy &networkProxy)
*/
HB_FUNC_STATIC( QWEBSOCKET_SETPROXY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkProxy * par1 = (QNetworkProxy *) _qt5xhb_itemGetPtr(1);
    obj->setProxy ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
const QMaskGenerator *maskGenerator() const
*/
HB_FUNC_STATIC( QWEBSOCKET_MASKGENERATOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QMaskGenerator * ptr = obj->maskGenerator ();
    _qt5xhb_createReturnClass ( ptr, "QMASKGENERATOR" );
  }
#endif
}

/*
void setMaskGenerator(const QMaskGenerator *maskGenerator)
*/
HB_FUNC_STATIC( QWEBSOCKET_SETMASKGENERATOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QMaskGenerator * par1 = (const QMaskGenerator *) _qt5xhb_itemGetPtr(1);
    obj->setMaskGenerator ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qint64 readBufferSize() const
*/
HB_FUNC_STATIC( QWEBSOCKET_READBUFFERSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->readBufferSize () );
  }
#endif
}

/*
void setReadBufferSize(qint64 size)
*/
HB_FUNC_STATIC( QWEBSOCKET_SETREADBUFFERSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setReadBufferSize ( (qint64) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void resume()
*/
HB_FUNC_STATIC( QWEBSOCKET_RESUME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resume ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void setPauseMode(QAbstractSocket::PauseModes pauseMode)
*/
HB_FUNC_STATIC( QWEBSOCKET_SETPAUSEMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPauseMode (  (QAbstractSocket::PauseModes) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QAbstractSocket::SocketState state() const
*/
HB_FUNC_STATIC( QWEBSOCKET_STATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state () );
  }
#endif
}


/*
QWebSocketProtocol::Version version() const
*/
HB_FUNC_STATIC( QWEBSOCKET_VERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->version () );
  }
#endif
}


/*
QString resourceName() const
*/
HB_FUNC_STATIC( QWEBSOCKET_RESOURCENAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->resourceName () ) );
  }
#endif
}


/*
QUrl requestUrl() const
*/
HB_FUNC_STATIC( QWEBSOCKET_REQUESTURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->requestUrl () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
#endif
}


/*
QString origin() const
*/
HB_FUNC_STATIC( QWEBSOCKET_ORIGIN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->origin () ) );
  }
#endif
}


/*
QWebSocketProtocol::CloseCode closeCode() const
*/
HB_FUNC_STATIC( QWEBSOCKET_CLOSECODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->closeCode () );
  }
#endif
}


/*
QString closeReason() const
*/
HB_FUNC_STATIC( QWEBSOCKET_CLOSEREASON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->closeReason () ) );
  }
#endif
}


/*
qint64 sendTextMessage(const QString &message)
*/
HB_FUNC_STATIC( QWEBSOCKET_SENDTEXTMESSAGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->sendTextMessage ( PQSTRING(1) ) );
  }
#endif
}


/*
qint64 sendBinaryMessage(const QByteArray &data)
*/
HB_FUNC_STATIC( QWEBSOCKET_SENDBINARYMESSAGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->sendBinaryMessage ( *par1 ) );
  }
#endif
}


/*
void ignoreSslErrors(const QList<QSslError> &errors)
*/
HB_FUNC_STATIC( QWEBSOCKET_IGNORESSLERRORS1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QSslError> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QSslError *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->ignoreSslErrors ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void ignoreSslErrors()
*/
HB_FUNC_STATIC( QWEBSOCKET_IGNORESSLERRORS2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->ignoreSslErrors ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


//[1]void ignoreSslErrors(const QList<QSslError> &errors)
//[2]void ignoreSslErrors()

HB_FUNC_STATIC( QWEBSOCKET_IGNORESSLERRORS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QWEBSOCKET_IGNORESSLERRORS1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QWEBSOCKET_IGNORESSLERRORS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSslConfiguration sslConfiguration() const
*/
HB_FUNC_STATIC( QWEBSOCKET_SSLCONFIGURATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSslConfiguration * ptr = new QSslConfiguration( obj->sslConfiguration () );
    _qt5xhb_createReturnClass ( ptr, "QSSLCONFIGURATION", true );
  }
#endif
}

/*
void setSslConfiguration(const QSslConfiguration &sslConfiguration)
*/
HB_FUNC_STATIC( QWEBSOCKET_SETSSLCONFIGURATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSslConfiguration * par1 = (QSslConfiguration *) _qt5xhb_itemGetPtr(1);
    obj->setSslConfiguration ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void close(QWebSocketProtocol::CloseCode closeCode = QWebSocketProtocol::CloseCodeNormal,const QString &reason = QString())
*/
HB_FUNC_STATIC( QWEBSOCKET_CLOSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QWebSocketProtocol::CloseCodeNormal : hb_parni(1);
    obj->close (  (QWebSocketProtocol::CloseCode) par1, OPQSTRING(2,QString()) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void open(const QUrl &url)
*/
HB_FUNC_STATIC( QWEBSOCKET_OPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    obj->open ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void ping(const QByteArray &payload = QByteArray())
*/
HB_FUNC_STATIC( QWEBSOCKET_PING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QWebSocket * obj = (QWebSocket *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray par1 = ISNIL(1)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(1);
    obj->ping ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
