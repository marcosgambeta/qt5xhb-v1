/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQBLUETOOTHTRANSFERMANAGER_H
#define SLOTSQBLUETOOTHTRANSFERMANAGER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothTransferManager>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQBluetoothTransferManager: public QObject
{
  Q_OBJECT
  public:
  SlotsQBluetoothTransferManager(QObject *parent = 0);
  ~SlotsQBluetoothTransferManager();
  public slots:
  void finished(QBluetoothTransferReply *reply);
};

#endif // SLOTSQBLUETOOTHTRANSFERMANAGER_H
