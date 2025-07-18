//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QWEBSOCKETSLOTS_H
#define QWEBSOCKETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
#include <QtWebSockets/QWebSocket>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QWebSocketSlots : public QObject
{
  Q_OBJECT
public:
  QWebSocketSlots(QObject *parent = 0);
  ~QWebSocketSlots();
public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  void aboutToClose();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  void connected();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  void disconnected();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  void stateChanged(QAbstractSocket::SocketState state);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  void proxyAuthenticationRequired(const QNetworkProxy &proxy, QAuthenticator *pAuthenticator);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  void readChannelFinished();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  void textFrameReceived(const QString &frame, bool isLastFrame);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  void binaryFrameReceived(const QByteArray &frame, bool isLastFrame);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  void textMessageReceived(const QString &message);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  void binaryMessageReceived(const QByteArray &message);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  void error(QAbstractSocket::SocketError error);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  void pong(quint64 elapsedTime, const QByteArray &payload);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  void bytesWritten(qint64 bytes);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 3, 0))
  void sslErrors(const QList<QSslError> &errors);
#endif
};

#endif // QWEBSOCKETSLOTS_H
