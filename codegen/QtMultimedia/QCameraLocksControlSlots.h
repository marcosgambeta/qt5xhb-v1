/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQCAMERALOCKSCONTROL_H
#define SLOTSQCAMERALOCKSCONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QCameraLocksControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQCameraLocksControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQCameraLocksControl(QObject *parent = 0);
  ~SlotsQCameraLocksControl();
  public slots:
  void lockStatusChanged(QCamera::LockType lock, QCamera::LockStatus status, QCamera::LockChangeReason reason);
};

#endif // SLOTSQCAMERALOCKSCONTROL_H
