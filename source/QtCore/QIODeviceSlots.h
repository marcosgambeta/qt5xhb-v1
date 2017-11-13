/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQIODEVICE_H
#define SLOTSQIODEVICE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QIODevice>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQIODevice: public QObject
{
  Q_OBJECT
  public:
  SlotsQIODevice(QObject *parent = 0);
  ~SlotsQIODevice();
  public slots:
  void aboutToClose ();
  void bytesWritten ( qint64 bytes );
  void readChannelFinished ();
  void readyRead ();
};

#endif // SLOTSQIODEVICE_H
