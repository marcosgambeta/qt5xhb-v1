/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQCAMERAFOCUS_H
#define SLOTSQCAMERAFOCUS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QCameraFocus>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQCameraFocus: public QObject
{
  Q_OBJECT
  public:
  SlotsQCameraFocus(QObject *parent = 0);
  ~SlotsQCameraFocus();
  public slots:
  void digitalZoomChanged(qreal value);
  void focusZonesChanged();
  void maximumDigitalZoomChanged(qreal zoom);
  void maximumOpticalZoomChanged(qreal zoom);
  void opticalZoomChanged(qreal value);
};

#endif // SLOTSQCAMERAFOCUS_H
