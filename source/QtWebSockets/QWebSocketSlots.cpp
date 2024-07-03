//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#include "QWebSocketSlots.hpp"

QWebSocketSlots::QWebSocketSlots(QObject *parent) : QObject(parent)
{
}

QWebSocketSlots::~QWebSocketSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
void QWebSocketSlots::aboutToClose()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "aboutToClose()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWEBSOCKET");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
void QWebSocketSlots::connected()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "connected()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWEBSOCKET");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
void QWebSocketSlots::disconnected()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "disconnected()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWEBSOCKET");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
void QWebSocketSlots::stateChanged(QAbstractSocket::SocketState state)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "stateChanged(QAbstractSocket::SocketState)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWEBSOCKET");
    PHB_ITEM pstate = hb_itemPutNI(NULL, static_cast<int>(state));

    hb_vmEvalBlockV(cb, 2, psender, pstate);

    hb_itemRelease(psender);
    hb_itemRelease(pstate);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
void QWebSocketSlots::proxyAuthenticationRequired(const QNetworkProxy &proxy, QAuthenticator *pAuthenticator)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "proxyAuthenticationRequired(QNetworkProxy,QAuthenticator*)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWEBSOCKET");
    PHB_ITEM pproxy = Qt5xHb::Signals_return_object((void *)&proxy, "QNETWORKPROXY");
    PHB_ITEM ppAuthenticator = Qt5xHb::Signals_return_object((void *)pAuthenticator, "QAUTHENTICATOR");

    hb_vmEvalBlockV(cb, 3, psender, pproxy, ppAuthenticator);

    hb_itemRelease(psender);
    hb_itemRelease(pproxy);
    hb_itemRelease(ppAuthenticator);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
void QWebSocketSlots::readChannelFinished()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "readChannelFinished()");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWEBSOCKET");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
void QWebSocketSlots::textFrameReceived(const QString &frame, bool isLastFrame)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "textFrameReceived(QString,bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWEBSOCKET");
    PHB_ITEM pframe = hb_itemPutC(NULL, QSTRINGTOSTRING(frame));
    PHB_ITEM pisLastFrame = hb_itemPutL(NULL, isLastFrame);

    hb_vmEvalBlockV(cb, 3, psender, pframe, pisLastFrame);

    hb_itemRelease(psender);
    hb_itemRelease(pframe);
    hb_itemRelease(pisLastFrame);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
void QWebSocketSlots::binaryFrameReceived(const QByteArray &frame, bool isLastFrame)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "binaryFrameReceived(QByteArray,bool)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWEBSOCKET");
    PHB_ITEM pframe = Qt5xHb::Signals_return_object((void *)&frame, "QBYTEARRAY");
    PHB_ITEM pisLastFrame = hb_itemPutL(NULL, isLastFrame);

    hb_vmEvalBlockV(cb, 3, psender, pframe, pisLastFrame);

    hb_itemRelease(psender);
    hb_itemRelease(pframe);
    hb_itemRelease(pisLastFrame);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
void QWebSocketSlots::textMessageReceived(const QString &message)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "textMessageReceived(QString)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWEBSOCKET");
    PHB_ITEM pmessage = hb_itemPutC(NULL, QSTRINGTOSTRING(message));

    hb_vmEvalBlockV(cb, 2, psender, pmessage);

    hb_itemRelease(psender);
    hb_itemRelease(pmessage);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
void QWebSocketSlots::binaryMessageReceived(const QByteArray &message)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "binaryMessageReceived(QByteArray)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWEBSOCKET");
    PHB_ITEM pmessage = Qt5xHb::Signals_return_object((void *)&message, "QBYTEARRAY");

    hb_vmEvalBlockV(cb, 2, psender, pmessage);

    hb_itemRelease(psender);
    hb_itemRelease(pmessage);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
void QWebSocketSlots::error(QAbstractSocket::SocketError error)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "error(QAbstractSocket::SocketError)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWEBSOCKET");
    PHB_ITEM perror = hb_itemPutNI(NULL, static_cast<int>(error));

    hb_vmEvalBlockV(cb, 2, psender, perror);

    hb_itemRelease(psender);
    hb_itemRelease(perror);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
void QWebSocketSlots::pong(quint64 elapsedTime, const QByteArray &payload)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "pong(quint64,QByteArray)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWEBSOCKET");
    PHB_ITEM pelapsedTime = hb_itemPutNLL(NULL, elapsedTime);
    PHB_ITEM ppayload = Qt5xHb::Signals_return_object((void *)&payload, "QBYTEARRAY");

    hb_vmEvalBlockV(cb, 3, psender, pelapsedTime, ppayload);

    hb_itemRelease(psender);
    hb_itemRelease(pelapsedTime);
    hb_itemRelease(ppayload);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
void QWebSocketSlots::bytesWritten(qint64 bytes)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "bytesWritten(qint64)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWEBSOCKET");
    PHB_ITEM pbytes = hb_itemPutNLL(NULL, bytes);

    hb_vmEvalBlockV(cb, 2, psender, pbytes);

    hb_itemRelease(psender);
    hb_itemRelease(pbytes);
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
void QWebSocketSlots::sslErrors(const QList<QSslError> &errors)
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "sslErrors(QList<QSslError>)");

  if (cb != NULL)
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWEBSOCKET");
    PHB_DYNS pDynSym = hb_dynsymFindName("QSSLERROR");
    PHB_ITEM perrors = hb_itemArrayNew(0);
    if (pDynSym != NULL)
    {
      for (int i = 0; i < errors.count(); i++)
      {
        hb_vmPushDynSym(pDynSym);
        hb_vmPushNil();
        hb_vmDo(0);
        PHB_ITEM pTempObject = hb_itemNew(NULL);
        hb_itemCopy(pTempObject, hb_stackReturnItem());
        PHB_ITEM pTempItem = hb_itemPutPtr(NULL, new QSslError(errors[i]));
        hb_objSendMsg(pTempObject, "NEWFROMPOINTER", 1, pTempItem);
        hb_arrayAddForward(perrors, pTempObject);
        hb_itemRelease(pTempObject);
        hb_itemRelease(pTempItem);
      }
    }
    else
    {
      hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QSSLERROR", HB_ERR_ARGS_BASEPARAMS);
    }

    hb_vmEvalBlockV(cb, 2, psender, perrors);

    hb_itemRelease(psender);
    hb_itemRelease(perrors);
  }
}
#endif

void QWebSocketSlots_connect_signal(const QString &signal, const QString &slot)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  QWebSocket *obj = (QWebSocket *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    QWebSocketSlots *s = QCoreApplication::instance()->findChild<QWebSocketSlots *>();

    if (s == NULL)
    {
      s = new QWebSocketSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}
