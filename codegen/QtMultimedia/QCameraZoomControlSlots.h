/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQCAMERAZOOMCONTROL_H
#define SLOTSQCAMERAZOOMCONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QCameraZoomControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQCameraZoomControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQCameraZoomControl(QObject *parent = 0);
  ~SlotsQCameraZoomControl();
  public slots:
  void currentDigitalZoomChanged(qreal zoom);
  void currentOpticalZoomChanged(qreal zoom);
  void maximumDigitalZoomChanged(qreal zoom);
  void maximumOpticalZoomChanged(qreal zoom);
  void requestedDigitalZoomChanged(qreal zoom);
  void requestedOpticalZoomChanged(qreal zoom);
};

#endif // SLOTSQCAMERAZOOMCONTROL_H
