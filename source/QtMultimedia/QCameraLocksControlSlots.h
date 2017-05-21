/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
