/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQBLUETOOTHTRANSFERREPLY_H
#define SLOTSQBLUETOOTHTRANSFERREPLY_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QBluetoothTransferReply>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQBluetoothTransferReply: public QObject
{
  Q_OBJECT
  public:
  SlotsQBluetoothTransferReply(QObject *parent = 0);
  ~SlotsQBluetoothTransferReply();
  public slots:
  void finished(QBluetoothTransferReply * r);
  void transferProgress(qint64 bytesTransferred, qint64 bytesTotal);
};

#endif // SLOTSQBLUETOOTHTRANSFERREPLY_H
