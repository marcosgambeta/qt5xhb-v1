//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QSENSORSLOTS_H
#define QSENSORSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#include <QtSensors/QSensor>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QSensorSlots : public QObject
{
  Q_OBJECT
public:
  QSensorSlots(QObject *parent = 0);
  ~QSensorSlots();
public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  void busyChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  void activeChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  void readingChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  void sensorError(int error);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  void availableSensorsChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  void alwaysOnChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  void dataRateChanged();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  void skipDuplicatesChanged(bool skipDuplicates);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  void axesOrientationModeChanged(QSensor::AxesOrientationMode axesOrientationMode);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  void currentOrientationChanged(int currentOrientation);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  void userOrientationChanged(int userOrientation);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  void maxBufferSizeChanged(int maxBufferSize);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  void efficientBufferSizeChanged(int efficientBufferSize);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  void bufferSizeChanged(int bufferSize);
#endif
};

#endif // QSENSORSLOTS_H
