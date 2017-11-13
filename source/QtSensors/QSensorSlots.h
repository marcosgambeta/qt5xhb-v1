/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQSENSOR_H
#define SLOTSQSENSOR_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensor>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQSensor: public QObject
{
  Q_OBJECT
  public:
  SlotsQSensor(QObject *parent = 0);
  ~SlotsQSensor();
  public slots:
  void busyChanged();
  void activeChanged();
  void readingChanged();
  void sensorError(int error);
  void availableSensorsChanged();
  void alwaysOnChanged();
  void dataRateChanged();
  void skipDuplicatesChanged(bool skipDuplicates);
  void axesOrientationModeChanged(QSensor::AxesOrientationMode axesOrientationMode);
  void currentOrientationChanged(int currentOrientation);
  void userOrientationChanged(int userOrientation);
  void maxBufferSizeChanged(int maxBufferSize);
  void efficientBufferSizeChanged(int efficientBufferSize);
  void bufferSizeChanged(int bufferSize);
};

#endif // SLOTSQSENSOR_H
