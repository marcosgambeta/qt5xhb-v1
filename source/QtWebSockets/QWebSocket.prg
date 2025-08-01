//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHOSTADDRESS
REQUEST QMASKGENERATOR
REQUEST QNETWORKPROXY
REQUEST QSSLCONFIGURATION
REQUEST QURL
#endif

CLASS QWebSocket INHERIT QObject

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

PROCEDURE destroyObject() CLASS QWebSocket
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
#include <QtWebSockets/QWebSocket>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
#include <QtWebSockets/QWebSocket>
#endif
#endif

#include <QtWebSockets/QMaskGenerator>

    /*
    QWebSocket( const QString &origin = QString(), QWebSocketProtocol::Version version =
    QWebSocketProtocol::VersionLatest, QObject * parent = nullptr )
    */
HB_FUNC_STATIC(QWEBSOCKET_NEW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  if (ISBETWEEN(0, 3) && (HB_ISCHAR(1) || HB_ISNIL(1)) && ISNUMORNIL(2) && (ISQOBJECT(3) || HB_ISNIL(3)))
  {
    QWebSocket *obj = new QWebSocket(OPQSTRING(1, QString()),
                                     HB_ISNIL(2) ? (QWebSocketProtocol::Version)QWebSocketProtocol::VersionLatest
                                                 : (QWebSocketProtocol::Version)hb_parni(2),
                                     OPQOBJECT(3, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QWEBSOCKET_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void abort()
*/
HB_FUNC_STATIC(QWEBSOCKET_ABORT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->abort();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QAbstractSocket::SocketError error() const
*/
HB_FUNC_STATIC(QWEBSOCKET_ERROR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->error());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QString errorString() const
*/
HB_FUNC_STATIC(QWEBSOCKET_ERRORSTRING)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->errorString());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
bool flush()
*/
HB_FUNC_STATIC(QWEBSOCKET_FLUSH)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->flush());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
bool isValid() const
*/
HB_FUNC_STATIC(QWEBSOCKET_ISVALID)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isValid());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QHostAddress localAddress() const
*/
HB_FUNC_STATIC(QWEBSOCKET_LOCALADDRESS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QHostAddress *ptr = new QHostAddress(obj->localAddress());
      Qt5xHb::createReturnClass(ptr, "QHOSTADDRESS", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
quint16 localPort() const
*/
HB_FUNC_STATIC(QWEBSOCKET_LOCALPORT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQUINT16(obj->localPort());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QAbstractSocket::PauseModes pauseMode() const
*/
HB_FUNC_STATIC(QWEBSOCKET_PAUSEMODE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->pauseMode());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QHostAddress peerAddress() const
*/
HB_FUNC_STATIC(QWEBSOCKET_PEERADDRESS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QHostAddress *ptr = new QHostAddress(obj->peerAddress());
      Qt5xHb::createReturnClass(ptr, "QHOSTADDRESS", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QString peerName() const
*/
HB_FUNC_STATIC(QWEBSOCKET_PEERNAME)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->peerName());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
quint16 peerPort() const
*/
HB_FUNC_STATIC(QWEBSOCKET_PEERPORT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQUINT16(obj->peerPort());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QNetworkProxy proxy() const
*/
HB_FUNC_STATIC(QWEBSOCKET_PROXY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QNetworkProxy *ptr = new QNetworkProxy(obj->proxy());
      Qt5xHb::createReturnClass(ptr, "QNETWORKPROXY", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setProxy( const QNetworkProxy &networkProxy )
*/
HB_FUNC_STATIC(QWEBSOCKET_SETPROXY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQNETWORKPROXY(1))
    {
#endif
      obj->setProxy(*PQNETWORKPROXY(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
const QMaskGenerator * maskGenerator() const
*/
HB_FUNC_STATIC(QWEBSOCKET_MASKGENERATOR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      const QMaskGenerator *ptr = obj->maskGenerator();
      Qt5xHb::createReturnQObjectClass(ptr, "QMASKGENERATOR");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setMaskGenerator( const QMaskGenerator * maskGenerator )
*/
HB_FUNC_STATIC(QWEBSOCKET_SETMASKGENERATOR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQMASKGENERATOR(1))
    {
#endif
      obj->setMaskGenerator(PQMASKGENERATOR(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
qint64 readBufferSize() const
*/
HB_FUNC_STATIC(QWEBSOCKET_READBUFFERSIZE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQINT64(obj->readBufferSize());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setReadBufferSize( qint64 size )
*/
HB_FUNC_STATIC(QWEBSOCKET_SETREADBUFFERSIZE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setReadBufferSize(PQINT64(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void resume()
*/
HB_FUNC_STATIC(QWEBSOCKET_RESUME)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->resume();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void setPauseMode( QAbstractSocket::PauseModes pauseMode )
*/
HB_FUNC_STATIC(QWEBSOCKET_SETPAUSEMODE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setPauseMode((QAbstractSocket::PauseModes)hb_parni(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QAbstractSocket::SocketState state() const
*/
HB_FUNC_STATIC(QWEBSOCKET_STATE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->state());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QWebSocketProtocol::Version version() const
*/
HB_FUNC_STATIC(QWEBSOCKET_VERSION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->version());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QString resourceName() const
*/
HB_FUNC_STATIC(QWEBSOCKET_RESOURCENAME)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->resourceName());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QUrl requestUrl() const
*/
HB_FUNC_STATIC(QWEBSOCKET_REQUESTURL)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QUrl *ptr = new QUrl(obj->requestUrl());
      Qt5xHb::createReturnClass(ptr, "QURL", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QString origin() const
*/
HB_FUNC_STATIC(QWEBSOCKET_ORIGIN)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->origin());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QWebSocketProtocol::CloseCode closeCode() const
*/
HB_FUNC_STATIC(QWEBSOCKET_CLOSECODE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->closeCode());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QString closeReason() const
*/
HB_FUNC_STATIC(QWEBSOCKET_CLOSEREASON)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->closeReason());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
qint64 sendTextMessage( const QString &message )
*/
HB_FUNC_STATIC(QWEBSOCKET_SENDTEXTMESSAGE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RQINT64(obj->sendTextMessage(PQSTRING(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
qint64 sendBinaryMessage( const QByteArray &data )
*/
HB_FUNC_STATIC(QWEBSOCKET_SENDBINARYMESSAGE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQBYTEARRAY(1))
    {
#endif
      RQINT64(obj->sendBinaryMessage(*PQBYTEARRAY(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

HB_FUNC_STATIC(QWEBSOCKET_IGNORESSLERRORS)
{
  if (ISNUMPAR(1) && HB_ISARRAY(1))
  {
    /*
    void ignoreSslErrors( const QList<QSslError> &errors )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
    QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      QList<QSslError> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int nLen1 = hb_arrayLen(aList1);
      for (int i1 = 0; i1 < nLen1; i1++)
      {
        par1 << *(QSslError *)hb_itemGetPtr(hb_objSendMsg(hb_arrayGetItemPtr(aList1, i1 + 1), "POINTER", 0));
      }
      obj->ignoreSslErrors(par1);
    }

    hb_itemReturn(hb_stackSelfItem());
#endif
  }
  else if (ISNUMPAR(0))
  {
    /*
    void ignoreSslErrors()
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
    QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

    if (obj != NULL)
    {
      obj->ignoreSslErrors();
    }

    hb_itemReturn(hb_stackSelfItem());
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QSslConfiguration sslConfiguration() const
*/
HB_FUNC_STATIC(QWEBSOCKET_SSLCONFIGURATION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSslConfiguration *ptr = new QSslConfiguration(obj->sslConfiguration());
      Qt5xHb::createReturnClass(ptr, "QSSLCONFIGURATION", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setSslConfiguration( const QSslConfiguration &sslConfiguration )
*/
HB_FUNC_STATIC(QWEBSOCKET_SETSSLCONFIGURATION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSSLCONFIGURATION(1))
    {
#endif
      obj->setSslConfiguration(*PQSSLCONFIGURATION(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void close( QWebSocketProtocol::CloseCode closeCode = QWebSocketProtocol::CloseCodeNormal, const QString &reason =
QString() )
*/
HB_FUNC_STATIC(QWEBSOCKET_CLOSE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 2) && ISNUMORNIL(1) && (HB_ISCHAR(2) || HB_ISNIL(2)))
    {
#endif
      obj->close(HB_ISNIL(1) ? (QWebSocketProtocol::CloseCode)QWebSocketProtocol::CloseCodeNormal
                             : (QWebSocketProtocol::CloseCode)hb_parni(1),
                 OPQSTRING(2, QString()));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void open( const QUrl &url )
*/
HB_FUNC_STATIC(QWEBSOCKET_OPEN)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQURL(1))
    {
#endif
      obj->open(*PQURL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void ping( const QByteArray &payload = QByteArray() )
*/
HB_FUNC_STATIC(QWEBSOCKET_PING)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 1) && (ISQBYTEARRAY(1) || HB_ISNIL(1)))
    {
#endif
      obj->ping(HB_ISNIL(1) ? QByteArray() : *(QByteArray *)Qt5xHb::itemGetPtr(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

void QWebSocketSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QWEBSOCKET_ONABOUTTOCLOSE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketSlots_connect_signal("aboutToClose()", "aboutToClose()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QWEBSOCKET_ONCONNECTED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketSlots_connect_signal("connected()", "connected()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QWEBSOCKET_ONDISCONNECTED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketSlots_connect_signal("disconnected()", "disconnected()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QWEBSOCKET_ONSTATECHANGED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketSlots_connect_signal("stateChanged(QAbstractSocket::SocketState)",
                                 "stateChanged(QAbstractSocket::SocketState)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QWEBSOCKET_ONPROXYAUTHENTICATIONREQUIRED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketSlots_connect_signal("proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)",
                                 "proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QWEBSOCKET_ONREADCHANNELFINISHED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketSlots_connect_signal("readChannelFinished()", "readChannelFinished()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QWEBSOCKET_ONTEXTFRAMERECEIVED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketSlots_connect_signal("textFrameReceived(QString,bool)", "textFrameReceived(QString,bool)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QWEBSOCKET_ONBINARYFRAMERECEIVED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketSlots_connect_signal("binaryFrameReceived(QByteArray,bool)", "binaryFrameReceived(QByteArray,bool)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QWEBSOCKET_ONTEXTMESSAGERECEIVED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketSlots_connect_signal("textMessageReceived(QString)", "textMessageReceived(QString)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QWEBSOCKET_ONBINARYMESSAGERECEIVED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketSlots_connect_signal("binaryMessageReceived(QByteArray)", "binaryMessageReceived(QByteArray)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QWEBSOCKET_ONERROR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketSlots_connect_signal("error(QAbstractSocket::SocketError)", "error(QAbstractSocket::SocketError)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QWEBSOCKET_ONPONG)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketSlots_connect_signal("pong(quint64,QByteArray)", "pong(quint64,QByteArray)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QWEBSOCKET_ONBYTESWRITTEN)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketSlots_connect_signal("bytesWritten(qint64)", "bytesWritten(qint64)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QWEBSOCKET_ONSSLERRORS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketSlots_connect_signal("sslErrors(QList<QSslError>)", "sslErrors(QList<QSslError>)");
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
