/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
