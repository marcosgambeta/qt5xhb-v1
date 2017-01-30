/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
    PHB_ITEM pframe = hb_itemPutC( NULL, (const char *) frame.toLatin1().data() );
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
    PHB_ITEM pmessage = hb_itemPutC( NULL, (const char *) message.toLatin1().data() );
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
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSSLERROR" );
    #else
    pDynSym = hb_dynsymFindName( "QSSLERROR" );
    #endif
    PHB_ITEM perrors = hb_itemArrayNew(0);
    int i;
    for(i=0;i<errors.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
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

HB_FUNC( QWEBSOCKET_ONABOUTTOCLOSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  if( s == NULL )
  {
    s = new SlotsQWebSocket(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "aboutToClose()";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(aboutToClose()), s, SLOT(aboutToClose()) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "aboutToClose()";
    ret = object->disconnect(object, SIGNAL(aboutToClose()), s, SLOT(aboutToClose()) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
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
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "connected()";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(connected()), s, SLOT(connected()) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "connected()";
    ret = object->disconnect(object, SIGNAL(connected()), s, SLOT(connected()) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
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
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "disconnected()";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(disconnected()), s, SLOT(disconnected()) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "disconnected()";
    ret = object->disconnect(object, SIGNAL(disconnected()), s, SLOT(disconnected()) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
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
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "stateChanged(QAbstractSocket::SocketState)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(stateChanged(QAbstractSocket::SocketState)), s, SLOT(stateChanged(QAbstractSocket::SocketState)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "stateChanged(QAbstractSocket::SocketState)";
    ret = object->disconnect(object, SIGNAL(stateChanged(QAbstractSocket::SocketState)), s, SLOT(stateChanged(QAbstractSocket::SocketState)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
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
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "proxyAuthenticationRequired(QNetworkProxy,QAuthenticator *)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(proxyAuthenticationRequired(QNetworkProxy,QAuthenticator *)), s, SLOT(proxyAuthenticationRequired(QNetworkProxy,QAuthenticator *)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "proxyAuthenticationRequired(QNetworkProxy,QAuthenticator *)";
    ret = object->disconnect(object, SIGNAL(proxyAuthenticationRequired(QNetworkProxy,QAuthenticator *)), s, SLOT(proxyAuthenticationRequired(QNetworkProxy,QAuthenticator *)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
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
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "readChannelFinished()";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(readChannelFinished()), s, SLOT(readChannelFinished()) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "readChannelFinished()";
    ret = object->disconnect(object, SIGNAL(readChannelFinished()), s, SLOT(readChannelFinished()) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
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
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "textFrameReceived(QString,bool)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(textFrameReceived(QString,bool)), s, SLOT(textFrameReceived(QString,bool)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "textFrameReceived(QString,bool)";
    ret = object->disconnect(object, SIGNAL(textFrameReceived(QString,bool)), s, SLOT(textFrameReceived(QString,bool)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
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
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "binaryFrameReceived(QByteArray,bool)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(binaryFrameReceived(QByteArray,bool)), s, SLOT(binaryFrameReceived(QByteArray,bool)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "binaryFrameReceived(QByteArray,bool)";
    ret = object->disconnect(object, SIGNAL(binaryFrameReceived(QByteArray,bool)), s, SLOT(binaryFrameReceived(QByteArray,bool)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
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
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "textMessageReceived(QString)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(textMessageReceived(QString)), s, SLOT(textMessageReceived(QString)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "textMessageReceived(QString)";
    ret = object->disconnect(object, SIGNAL(textMessageReceived(QString)), s, SLOT(textMessageReceived(QString)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
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
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "binaryMessageReceived(QByteArray)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(binaryMessageReceived(QByteArray)), s, SLOT(binaryMessageReceived(QByteArray)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "binaryMessageReceived(QByteArray)";
    ret = object->disconnect(object, SIGNAL(binaryMessageReceived(QByteArray)), s, SLOT(binaryMessageReceived(QByteArray)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
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
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "error(QAbstractSocket::SocketError)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(error(QAbstractSocket::SocketError)), s, SLOT(error(QAbstractSocket::SocketError)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "error(QAbstractSocket::SocketError)";
    ret = object->disconnect(object, SIGNAL(error(QAbstractSocket::SocketError)), s, SLOT(error(QAbstractSocket::SocketError)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
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
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "pong(quint64,QByteArray)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(pong(quint64,QByteArray)), s, SLOT(pong(quint64,QByteArray)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "pong(quint64,QByteArray)";
    ret = object->disconnect(object, SIGNAL(pong(quint64,QByteArray)), s, SLOT(pong(quint64,QByteArray)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
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
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "bytesWritten(qint64)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(bytesWritten(qint64)), s, SLOT(bytesWritten(qint64)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "bytesWritten(qint64)";
    ret = object->disconnect(object, SIGNAL(bytesWritten(qint64)), s, SLOT(bytesWritten(qint64)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
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
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "sslErrors(QList<QSslError>)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(sslErrors(QList<QSslError>)), s, SLOT(sslErrors(QList<QSslError>)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "sslErrors(QList<QSslError>)";
    ret = object->disconnect(object, SIGNAL(sslErrors(QList<QSslError>)), s, SLOT(sslErrors(QList<QSslError>)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}

