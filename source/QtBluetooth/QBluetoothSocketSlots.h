/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQBLUETOOTHSOCKET_H
#define SLOTSQBLUETOOTHSOCKET_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothSocket>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQBluetoothSocket: public QObject
{
  Q_OBJECT
  public:
  SlotsQBluetoothSocket(QObject *parent = 0);
  ~SlotsQBluetoothSocket();
  public slots:
  void connected();
  void disconnected();
  void error(QBluetoothSocket::SocketError error);
  void stateChanged(QBluetoothSocket::SocketState state);
};

#endif // SLOTSQBLUETOOTHSOCKET_H
