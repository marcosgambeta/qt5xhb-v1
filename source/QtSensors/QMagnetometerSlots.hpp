//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QMAGNETOMETERSLOTS_H
#define QMAGNETOMETERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
#include <QtSensors/QMagnetometer>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QMagnetometerSlots : public QObject
{
  Q_OBJECT
public:
  QMagnetometerSlots(QObject *parent = 0);
  ~QMagnetometerSlots();
public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5, 1, 0))
  void returnGeoValuesChanged(bool returnGeoValues);
#endif
};

#endif // QMAGNETOMETERSLOTS_H
