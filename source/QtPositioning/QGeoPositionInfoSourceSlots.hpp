//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QGEOPOSITIONINFOSOURCESLOTS_H
#define QGEOPOSITIONINFOSOURCESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtPositioning/QGeoPositionInfoSource>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QGeoPositionInfoSourceSlots : public QObject
{
  Q_OBJECT
public:
  QGeoPositionInfoSourceSlots(QObject *parent = 0);
  ~QGeoPositionInfoSourceSlots();
public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  void positionUpdated(const QGeoPositionInfo &update);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  void updateTimeout();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  void error(QGeoPositionInfoSource::Error error);
#endif
};

#endif // QGEOPOSITIONINFOSOURCESLOTS_H
