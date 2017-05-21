/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQACCELEROMETER_H
#define SLOTSQACCELEROMETER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QAccelerometer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAccelerometer: public QObject
{
  Q_OBJECT
  public:
  SlotsQAccelerometer(QObject *parent = 0);
  ~SlotsQAccelerometer();
  public slots:
  void accelerationModeChanged(QAccelerometer::AccelerationMode accelerationMode);
};

#endif // SLOTSQACCELEROMETER_H
