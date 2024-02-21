/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QMODBUSDEVICESLOTS_H
#define QMODBUSDEVICESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QModbusDevice>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QModbusDeviceSlots: public QObject
{
  Q_OBJECT
  public:
  QModbusDeviceSlots( QObject *parent = 0 );
  ~QModbusDeviceSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void errorOccurred( QModbusDevice::Error error );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  void stateChanged( QModbusDevice::State state );
#endif
};

#endif /* QMODBUSDEVICESLOTS_H */
