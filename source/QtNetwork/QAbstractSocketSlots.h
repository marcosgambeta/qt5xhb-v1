/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQABSTRACTSOCKET_H
#define SLOTSQABSTRACTSOCKET_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAbstractSocket>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAbstractSocket: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractSocket(QObject *parent = 0);
  ~SlotsQAbstractSocket();
  public slots:
  void connected ();
  void disconnected ();
  void error ( QAbstractSocket::SocketError socketError );
  void hostFound ();
  void proxyAuthenticationRequired ( const QNetworkProxy & proxy, QAuthenticator * authenticator );
  void stateChanged ( QAbstractSocket::SocketState socketState );
};

#endif // SLOTSQABSTRACTSOCKET_H
