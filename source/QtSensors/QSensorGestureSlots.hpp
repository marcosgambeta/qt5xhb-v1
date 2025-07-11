//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QSENSORGESTURESLOTS_H
#define QSENSORGESTURESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#include <QtSensors/QSensorGesture>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QSensorGestureSlots : public QObject
{
  Q_OBJECT
public:
  QSensorGestureSlots(QObject *parent = 0);
  ~QSensorGestureSlots();
public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  void detected(QString s);
#endif
};

#endif // QSENSORGESTURESLOTS_H
