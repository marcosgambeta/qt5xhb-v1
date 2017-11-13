/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQMAGNETOMETER_H
#define SLOTSQMAGNETOMETER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QMagnetometer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQMagnetometer: public QObject
{
  Q_OBJECT
  public:
  SlotsQMagnetometer(QObject *parent = 0);
  ~SlotsQMagnetometer();
  public slots:
  void returnGeoValuesChanged(bool returnGeoValues);
};

#endif // SLOTSQMAGNETOMETER_H
