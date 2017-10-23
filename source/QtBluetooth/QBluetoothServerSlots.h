/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQBLUETOOTHSERVER_H
#define SLOTSQBLUETOOTHSERVER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothServer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQBluetoothServer: public QObject
{
  Q_OBJECT
  public:
  SlotsQBluetoothServer(QObject *parent = 0);
  ~SlotsQBluetoothServer();
  public slots:
  void newConnection();
  void error(QBluetoothServer::Error error);
};

#endif // SLOTSQBLUETOOTHSERVER_H
