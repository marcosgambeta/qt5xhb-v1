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
REQUEST QNETWORKPROXY
REQUEST QSSLCONFIGURATION
REQUEST QWEBSOCKET
#endif

CLASS QWebSocketServer INHERIT QObject

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

PROCEDURE destroyObject() CLASS QWebSocketServer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
#include <QtWebSockets/QWebSocketServer>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
#include <QtWebSockets/QWebSocketServer>
#endif
#endif

#include <QtNetwork/QNetworkProxy>
#include <QtWebSockets/QWebSocket>

    /*
    QWebSocketServer( const QString &serverName, QWebSocketServer::SslMode secureMode, QObject * parent = nullptr )
    */
HB_FUNC_STATIC(QWEBSOCKETSERVER_NEW)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  if (ISBETWEEN(2, 3) && HB_ISCHAR(1) && HB_ISNUM(2) && (ISQOBJECT(3) || HB_ISNIL(3)))
  {
    QWebSocketServer *obj =
        new QWebSocketServer(PQSTRING(1), (QWebSocketServer::SslMode)hb_parni(2), OPQOBJECT(3, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QWEBSOCKETSERVER_DELETE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServer *obj = (QWebSocketServer *)Qt5xHb::itemGetPtrStackSelfItem();

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
bool listen( const QHostAddress &address = QHostAddress::Any, quint16 port = 0 )
*/
HB_FUNC_STATIC(QWEBSOCKETSERVER_LISTEN)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServer *obj = (QWebSocketServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(0, 2) && (ISQHOSTADDRESS(1) || HB_ISNIL(1)) && ISNUMORNIL(2))
    {
#endif
      RBOOL(obj->listen(HB_ISNIL(1) ? QHostAddress::Any : *(QHostAddress *)Qt5xHb::itemGetPtr(1), OPQUINT16(2, 0)));
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
void close()
*/
HB_FUNC_STATIC(QWEBSOCKETSERVER_CLOSE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServer *obj = (QWebSocketServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->close();
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
bool isListening() const
*/
HB_FUNC_STATIC(QWEBSOCKETSERVER_ISLISTENING)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServer *obj = (QWebSocketServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isListening());
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
int maxPendingConnections() const
*/
HB_FUNC_STATIC(QWEBSOCKETSERVER_MAXPENDINGCONNECTIONS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServer *obj = (QWebSocketServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->maxPendingConnections());
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
void setMaxPendingConnections( int numConnections )
*/
HB_FUNC_STATIC(QWEBSOCKETSERVER_SETMAXPENDINGCONNECTIONS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServer *obj = (QWebSocketServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setMaxPendingConnections(PINT(1));
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
quint16 serverPort() const
*/
HB_FUNC_STATIC(QWEBSOCKETSERVER_SERVERPORT)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServer *obj = (QWebSocketServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQUINT16(obj->serverPort());
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
QHostAddress serverAddress() const
*/
HB_FUNC_STATIC(QWEBSOCKETSERVER_SERVERADDRESS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServer *obj = (QWebSocketServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QHostAddress *ptr = new QHostAddress(obj->serverAddress());
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
QWebSocketServer::SslMode secureMode() const
*/
HB_FUNC_STATIC(QWEBSOCKETSERVER_SECUREMODE)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServer *obj = (QWebSocketServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->secureMode());
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
int socketDescriptor() const
*/
HB_FUNC_STATIC(QWEBSOCKETSERVER_SOCKETDESCRIPTOR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServer *obj = (QWebSocketServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->socketDescriptor());
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
bool setSocketDescriptor( int socketDescriptor )
*/
HB_FUNC_STATIC(QWEBSOCKETSERVER_SETSOCKETDESCRIPTOR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServer *obj = (QWebSocketServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->setSocketDescriptor(PINT(1)));
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
bool hasPendingConnections() const
*/
HB_FUNC_STATIC(QWEBSOCKETSERVER_HASPENDINGCONNECTIONS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServer *obj = (QWebSocketServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->hasPendingConnections());
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
virtual QWebSocket * nextPendingConnection()
*/
HB_FUNC_STATIC(QWEBSOCKETSERVER_NEXTPENDINGCONNECTION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServer *obj = (QWebSocketServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QWebSocket *ptr = obj->nextPendingConnection();
      Qt5xHb::createReturnQObjectClass(ptr, "QWEBSOCKET");
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
QWebSocketProtocol::CloseCode error() const
*/
HB_FUNC_STATIC(QWEBSOCKETSERVER_ERROR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServer *obj = (QWebSocketServer *)Qt5xHb::itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC(QWEBSOCKETSERVER_ERRORSTRING)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServer *obj = (QWebSocketServer *)Qt5xHb::itemGetPtrStackSelfItem();

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
void pauseAccepting()
*/
HB_FUNC_STATIC(QWEBSOCKETSERVER_PAUSEACCEPTING)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServer *obj = (QWebSocketServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->pauseAccepting();
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
void resumeAccepting()
*/
HB_FUNC_STATIC(QWEBSOCKETSERVER_RESUMEACCEPTING)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServer *obj = (QWebSocketServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->resumeAccepting();
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
QString serverName() const
*/
HB_FUNC_STATIC(QWEBSOCKETSERVER_SERVERNAME)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServer *obj = (QWebSocketServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->serverName());
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
void setServerName( const QString &serverName )
*/
HB_FUNC_STATIC(QWEBSOCKETSERVER_SETSERVERNAME)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServer *obj = (QWebSocketServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setServerName(PQSTRING(1));
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
QNetworkProxy proxy() const
*/
HB_FUNC_STATIC(QWEBSOCKETSERVER_PROXY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServer *obj = (QWebSocketServer *)Qt5xHb::itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC(QWEBSOCKETSERVER_SETPROXY)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServer *obj = (QWebSocketServer *)Qt5xHb::itemGetPtrStackSelfItem();

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
void setSslConfiguration( const QSslConfiguration &sslConfiguration )
*/
HB_FUNC_STATIC(QWEBSOCKETSERVER_SETSSLCONFIGURATION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServer *obj = (QWebSocketServer *)Qt5xHb::itemGetPtrStackSelfItem();

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
QSslConfiguration sslConfiguration() const
*/
HB_FUNC_STATIC(QWEBSOCKETSERVER_SSLCONFIGURATION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServer *obj = (QWebSocketServer *)Qt5xHb::itemGetPtrStackSelfItem();

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
QList<QWebSocketProtocol::Version> supportedVersions() const
*/
HB_FUNC_STATIC(QWEBSOCKETSERVER_SUPPORTEDVERSIONS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServer *obj = (QWebSocketServer *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QList<QWebSocketProtocol::Version> list = obj->supportedVersions();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      for (int i = 0; i < list.count(); i++)
      {
        PHB_ITEM pItem = hb_itemPutNI(NULL, static_cast<int>(list[i]));
        hb_arrayAddForward(pArray, pItem);
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
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

void QWebSocketServerSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QWEBSOCKETSERVER_ONACCEPTERROR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServerSlots_connect_signal("acceptError(QAbstractSocket::SocketError)",
                                       "acceptError(QAbstractSocket::SocketError)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QWEBSOCKETSERVER_ONSERVERERROR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServerSlots_connect_signal("serverError(QWebSocketProtocol::CloseCode)",
                                       "serverError(QWebSocketProtocol::CloseCode)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QWEBSOCKETSERVER_ONORIGINAUTHENTICATIONREQUIRED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServerSlots_connect_signal("originAuthenticationRequired(QWebSocketCorsAuthenticator*)",
                                       "originAuthenticationRequired(QWebSocketCorsAuthenticator*)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QWEBSOCKETSERVER_ONNEWCONNECTION)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServerSlots_connect_signal("newConnection()", "newConnection()");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QWEBSOCKETSERVER_ONPEERVERIFYERROR)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServerSlots_connect_signal("peerVerifyError(QSslError)", "peerVerifyError(QSslError)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QWEBSOCKETSERVER_ONSSLERRORS)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServerSlots_connect_signal("sslErrors(QList<QSslError>)", "sslErrors(QList<QSslError>)");
#else
  hb_retl(false);
#endif
}

HB_FUNC_STATIC(QWEBSOCKETSERVER_ONCLOSED)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocketServerSlots_connect_signal("closed()", "closed()");
#else
  hb_retl(false);
#endif
}

#pragma ENDDUMP
