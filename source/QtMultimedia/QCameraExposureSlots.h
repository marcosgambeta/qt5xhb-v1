/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQCAMERAEXPOSURE_H
#define SLOTSQCAMERAEXPOSURE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QCameraExposure>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQCameraExposure: public QObject
{
  Q_OBJECT
  public:
  SlotsQCameraExposure(QObject *parent = 0);
  ~SlotsQCameraExposure();
  public slots:
  void apertureChanged(qreal value);
  void apertureRangeChanged();
  void exposureCompensationChanged(qreal value);
  void flashReady(bool ready);
  void isoSensitivityChanged(int value);
  void shutterSpeedChanged(qreal speed);
  void shutterSpeedRangeChanged();
};

#endif // SLOTSQCAMERAEXPOSURE_H
