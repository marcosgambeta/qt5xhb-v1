/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QWebSocketSlots.h"


static SlotsQWebSocket * s = NULL;

SlotsQWebSocket::SlotsQWebSocket(QObject *parent) : QObject(parent)
{
}

SlotsQWebSocket::~SlotsQWebSocket()
{
}

void SlotsQWebSocket::aboutToClose()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "aboutToClose()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQWebSocket::connected()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "connected()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQWebSocket::disconnected()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "disconnected()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQWebSocket::stateChanged(QAbstractSocket::SocketState state)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QAbstractSocket::SocketState)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstate = hb_itemPutNI( NULL, (int) state );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstate );
    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
#endif
}

void SlotsQWebSocket::proxyAuthenticationRequired(const QNetworkProxy &proxy, QAuthenticator *pAuthenticator)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pproxy = hb_itemPutPtr( NULL, (QNetworkProxy *) &proxy );
    PHB_ITEM ppAuthenticator = hb_itemPutPtr( NULL, (QAuthenticator *) pAuthenticator );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pproxy, ppAuthenticator );
    hb_itemRelease( psender );
    hb_itemRelease( pproxy );
    hb_itemRelease( ppAuthenticator );
  }
#endif
}

void SlotsQWebSocket::readChannelFinished()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "readChannelFinished()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQWebSocket::textFrameReceived(const QString &frame, bool isLastFrame)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "textFrameReceived(QString,bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pframe = hb_itemPutC( NULL, QSTRINGTOSTRING(frame) );
    PHB_ITEM pisLastFrame = hb_itemPutL( NULL, isLastFrame );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pframe, pisLastFrame );
    hb_itemRelease( psender );
    hb_itemRelease( pframe );
    hb_itemRelease( pisLastFrame );
  }
#endif
}

void SlotsQWebSocket::binaryFrameReceived(const QByteArray &frame, bool isLastFrame)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "binaryFrameReceived(QByteArray,bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pframe = hb_itemPutPtr( NULL, (QByteArray *) &frame );
    PHB_ITEM pisLastFrame = hb_itemPutL( NULL, isLastFrame );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pframe, pisLastFrame );
    hb_itemRelease( psender );
    hb_itemRelease( pframe );
    hb_itemRelease( pisLastFrame );
  }
#endif
}

void SlotsQWebSocket::textMessageReceived(const QString &message)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "textMessageReceived(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmessage = hb_itemPutC( NULL, QSTRINGTOSTRING(message) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmessage );
    hb_itemRelease( psender );
    hb_itemRelease( pmessage );
  }
#endif
}

void SlotsQWebSocket::binaryMessageReceived(const QByteArray &message)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "binaryMessageReceived(QByteArray)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmessage = hb_itemPutPtr( NULL, (QByteArray *) &message );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmessage );
    hb_itemRelease( psender );
    hb_itemRelease( pmessage );
  }
#endif
}

void SlotsQWebSocket::error(QAbstractSocket::SocketError error)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QAbstractSocket::SocketError)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
#endif
}

void SlotsQWebSocket::pong(quint64 elapsedTime, const QByteArray &payload)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pong(quint64,QByteArray)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pelapsedTime = hb_itemPutNI( NULL, elapsedTime );
    PHB_ITEM ppayload = hb_itemPutPtr( NULL, (QByteArray *) &payload );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pelapsedTime, ppayload );
    hb_itemRelease( psender );
    hb_itemRelease( pelapsedTime );
    hb_itemRelease( ppayload );
  }
#endif
}

void SlotsQWebSocket::bytesWritten(qint64 bytes)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "bytesWritten(qint64)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pbytes = hb_itemPutNI( NULL, bytes );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pbytes );
    hb_itemRelease( psender );
    hb_itemRelease( pbytes );
  }
#endif
}

void SlotsQWebSocket::sslErrors(const QList<QSslError> &errors)
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
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSSLERROR", HB_ERR_ARGS_BASEPARAMS );
      }
    }
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perrors );
    hb_itemRelease( psender );
    hb_itemRelease( perrors );
  }
#endif
}

HB_FUNC( QWEBSOCKET_ONABOUTTOCLOSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( s == NULL )
  {
    s = new SlotsQWebSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "aboutToClose()", "aboutToClose()" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBSOCKET_ONCONNECTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( s == NULL )
  {
    s = new SlotsQWebSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "connected()", "connected()" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBSOCKET_ONDISCONNECTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( s == NULL )
  {
    s = new SlotsQWebSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "disconnected()", "disconnected()" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBSOCKET_ONSTATECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( s == NULL )
  {
    s = new SlotsQWebSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stateChanged(QAbstractSocket::SocketState)", "stateChanged(QAbstractSocket::SocketState)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBSOCKET_ONPROXYAUTHENTICATIONREQUIRED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( s == NULL )
  {
    s = new SlotsQWebSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)", "proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBSOCKET_ONREADCHANNELFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( s == NULL )
  {
    s = new SlotsQWebSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "readChannelFinished()", "readChannelFinished()" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBSOCKET_ONTEXTFRAMERECEIVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( s == NULL )
  {
    s = new SlotsQWebSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "textFrameReceived(QString,bool)", "textFrameReceived(QString,bool)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBSOCKET_ONBINARYFRAMERECEIVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( s == NULL )
  {
    s = new SlotsQWebSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "binaryFrameReceived(QByteArray,bool)", "binaryFrameReceived(QByteArray,bool)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBSOCKET_ONTEXTMESSAGERECEIVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( s == NULL )
  {
    s = new SlotsQWebSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "textMessageReceived(QString)", "textMessageReceived(QString)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBSOCKET_ONBINARYMESSAGERECEIVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( s == NULL )
  {
    s = new SlotsQWebSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "binaryMessageReceived(QByteArray)", "binaryMessageReceived(QByteArray)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBSOCKET_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( s == NULL )
  {
    s = new SlotsQWebSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(QAbstractSocket::SocketError)", "error(QAbstractSocket::SocketError)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBSOCKET_ONPONG )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( s == NULL )
  {
    s = new SlotsQWebSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "pong(quint64,QByteArray)", "pong(quint64,QByteArray)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBSOCKET_ONBYTESWRITTEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( s == NULL )
  {
    s = new SlotsQWebSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "bytesWritten(qint64)", "bytesWritten(qint64)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWEBSOCKET_ONSSLERRORS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( s == NULL )
  {
    s = new SlotsQWebSocket(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "sslErrors(QList<QSslError>)", "sslErrors(QList<QSslError>)" ) );
#else
  hb_retl(false);
#endif
}
