/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQWEBSOCKET_H
#define SLOTSQWEBSOCKET_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QWebSocket>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQWebSocket: public QObject
{
  Q_OBJECT
  public:
  SlotsQWebSocket(QObject *parent = 0);
  ~SlotsQWebSocket();
  public slots:
  void aboutToClose();
  void connected();
  void disconnected();
  void stateChanged(QAbstractSocket::SocketState state);
  void proxyAuthenticationRequired(const QNetworkProxy &proxy, QAuthenticator *pAuthenticator);
  void readChannelFinished();
  void textFrameReceived(const QString &frame, bool isLastFrame);
  void binaryFrameReceived(const QByteArray &frame, bool isLastFrame);
  void textMessageReceived(const QString &message);
  void binaryMessageReceived(const QByteArray &message);
  void error(QAbstractSocket::SocketError error);
  void pong(quint64 elapsedTime, const QByteArray &payload);
  void bytesWritten(qint64 bytes);
  void sslErrors(const QList<QSslError> &errors);
};

#endif // SLOTSQWEBSOCKET_H
