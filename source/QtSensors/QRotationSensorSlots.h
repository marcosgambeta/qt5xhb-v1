/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQROTATIONSENSOR_H
#define SLOTSQROTATIONSENSOR_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QRotationSensor>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQRotationSensor: public QObject
{
  Q_OBJECT
  public:
  SlotsQRotationSensor(QObject *parent = 0);
  ~SlotsQRotationSensor();
  public slots:
  void hasZChanged(bool hasZ);
};

#endif // SLOTSQROTATIONSENSOR_H
