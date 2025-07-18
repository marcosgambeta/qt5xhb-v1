//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QGEOSATELLITEINFOSOURCESLOTS_H
#define QGEOSATELLITEINFOSOURCESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtPositioning/QGeoSatelliteInfoSource>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QGeoSatelliteInfoSourceSlots : public QObject
{
  Q_OBJECT
public:
  QGeoSatelliteInfoSourceSlots(QObject *parent = 0);
  ~QGeoSatelliteInfoSourceSlots();
public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  void satellitesInViewUpdated(const QList<QGeoSatelliteInfo> &satellites);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  void satellitesInUseUpdated(const QList<QGeoSatelliteInfo> &satellites);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  void requestTimeout();
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  void error(QGeoSatelliteInfoSource::Error error);
#endif
};

#endif // QGEOSATELLITEINFOSOURCESLOTS_H
