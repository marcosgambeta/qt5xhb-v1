//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QBLUETOOTHLOCALDEVICESLOTS_H
#define QBLUETOOTHLOCALDEVICESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtBluetooth/QBluetoothLocalDevice>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QBluetoothLocalDeviceSlots : public QObject
{
  Q_OBJECT
public:
  QBluetoothLocalDeviceSlots(QObject *parent = 0);
  ~QBluetoothLocalDeviceSlots();
public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  void hostModeStateChanged(QBluetoothLocalDevice::HostMode state);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  void pairingFinished(const QBluetoothAddress &address, QBluetoothLocalDevice::Pairing pairing);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  void pairingDisplayPinCode(const QBluetoothAddress &address, QString pin);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  void pairingDisplayConfirmation(const QBluetoothAddress &address, QString pin);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  void error(QBluetoothLocalDevice::Error error);
#endif
};

#endif // QBLUETOOTHLOCALDEVICESLOTS_H
