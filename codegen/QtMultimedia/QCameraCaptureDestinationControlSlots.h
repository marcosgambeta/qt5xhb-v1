/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQCAMERACAPTUREDESTINATIONCONTROL_H
#define SLOTSQCAMERACAPTUREDESTINATIONCONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QCameraCaptureDestinationControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQCameraCaptureDestinationControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQCameraCaptureDestinationControl(QObject *parent = 0);
  ~SlotsQCameraCaptureDestinationControl();
  public slots:
  void captureDestinationChanged(QCameraImageCapture::CaptureDestinations destination);
};

#endif // SLOTSQCAMERACAPTUREDESTINATIONCONTROL_H
