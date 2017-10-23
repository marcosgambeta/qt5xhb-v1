/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQWEBSOCKETSERVER_H
#define SLOTSQWEBSOCKETSERVER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
#include <QWebSocketServer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQWebSocketServer: public QObject
{
  Q_OBJECT
  public:
  SlotsQWebSocketServer(QObject *parent = 0);
  ~SlotsQWebSocketServer();
  public slots:
  void acceptError(QAbstractSocket::SocketError socketError);
  void serverError(QWebSocketProtocol::CloseCode closeCode);
  void originAuthenticationRequired(QWebSocketCorsAuthenticator *pAuthenticator);
  void newConnection();
  void peerVerifyError(const QSslError &error);
  void sslErrors(const QList<QSslError> &errors);
  void closed();
};

#endif // SLOTSQWEBSOCKETSERVER_H
