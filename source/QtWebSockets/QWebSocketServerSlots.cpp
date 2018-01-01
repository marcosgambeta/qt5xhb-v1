/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QWebSocketServerSlots.h"


static SlotsQWebSocketServer * s = NULL;

SlotsQWebSocketServer::SlotsQWebSocketServer(QObject *parent) : QObject(parent)
{
}

SlotsQWebSocketServer::~SlotsQWebSocketServer()
{
}

void SlotsQWebSocketServer::acceptError(QAbstractSocket::SocketError socketError)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "acceptError(QAbstractSocket::SocketError)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psocketError = hb_itemPutNI( NULL, (int) socketError );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psocketError );
    hb_itemRelease( psender );
    hb_itemRelease( psocketError );
  }
#endif
}

void SlotsQWebSocketServer::serverError(QWebSocketProtocol::CloseCode closeCode)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "serverError(QWebSocketProtocol::CloseCode)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcloseCode = hb_itemPutNI( NULL, (int) closeCode );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcloseCode );
    hb_itemRelease( psender );
    hb_itemRelease( pcloseCode );
  }
#endif
}

void SlotsQWebSocketServer::originAuthenticationRequired(QWebSocketCorsAuthenticator *pAuthenticator)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "originAuthenticationRequired(QWebSocketCorsAuthenticator*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppAuthenticator = hb_itemPutPtr( NULL, (QWebSocketCorsAuthenticator *) pAuthenticator );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppAuthenticator );
    hb_itemRelease( psender );
    hb_itemRelease( ppAuthenticator );
  }
#endif
}

void SlotsQWebSocketServer::newConnection()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "newConnection()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQWebSocketServer::peerVerifyError(const QSslError &error)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "peerVerifyError(QSslError)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutPtr( NULL, (QSslError *) &error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
#endif
}

void SlotsQWebSocketServer::sslErrors(const QList<QSslError> &errors)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sslErrors(QList<QSslError>)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QSSLERROR" );
    PHB_ITEM perrors = hb_itemArrayNew(0);
    int i;
    for(i=0;i<errors.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pTempObject = hb_itemNew( NULL );
        hb_itemCopy( pTempObject, hb_stackReturnItem() );
        PHB_ITEM pTempItem = hb_itemNew( NULL );
        hb_itemPutPtr( pTempItem, (QSslError *) new QSslError ( errors [i] ) );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( perrors, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
    }
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perrors );
    hb_itemRelease( psender );
    hb_itemRelease( perrors );
  }
#endif
}

void SlotsQWebSocketServer::closed()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "closed()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

HB_FUNC( QWEBSOCKETSERVER_ONACCEPTERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( s == NULL )
  {
    s = new SlotsQWebSocketServer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "acceptError(QAbstractSocket::SocketError)", "acceptError(QAbstractSocket::SocketError)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBSOCKETSERVER_ONSERVERERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( s == NULL )
  {
    s = new SlotsQWebSocketServer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "serverError(QWebSocketProtocol::CloseCode)", "serverError(QWebSocketProtocol::CloseCode)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBSOCKETSERVER_ONORIGINAUTHENTICATIONREQUIRED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( s == NULL )
  {
    s = new SlotsQWebSocketServer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "originAuthenticationRequired(QWebSocketCorsAuthenticator*)", "originAuthenticationRequired(QWebSocketCorsAuthenticator*)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBSOCKETSERVER_ONNEWCONNECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( s == NULL )
  {
    s = new SlotsQWebSocketServer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "newConnection()", "newConnection()" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBSOCKETSERVER_ONPEERVERIFYERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( s == NULL )
  {
    s = new SlotsQWebSocketServer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "peerVerifyError(QSslError)", "peerVerifyError(QSslError)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBSOCKETSERVER_ONSSLERRORS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( s == NULL )
  {
    s = new SlotsQWebSocketServer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "sslErrors(QList<QSslError>)", "sslErrors(QList<QSslError>)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBSOCKETSERVER_ONCLOSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( s == NULL )
  {
    s = new SlotsQWebSocketServer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "closed()", "closed()" ) );
#else
  hb_retl(false);
#endif
}
