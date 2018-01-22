/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQMEDIAAVAILABILITYCONTROL_H
#define SLOTSQMEDIAAVAILABILITYCONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMediaAvailabilityControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQMediaAvailabilityControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQMediaAvailabilityControl(QObject *parent = 0);
  ~SlotsQMediaAvailabilityControl();
  public slots:
  void availabilityChanged(QMultimedia::AvailabilityStatus availability);
};

#endif // SLOTSQMEDIAAVAILABILITYCONTROL_H
