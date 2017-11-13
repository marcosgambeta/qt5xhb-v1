/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

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
