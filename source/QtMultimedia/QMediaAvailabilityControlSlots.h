/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
