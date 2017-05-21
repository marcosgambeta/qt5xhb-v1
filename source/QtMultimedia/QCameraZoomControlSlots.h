/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
