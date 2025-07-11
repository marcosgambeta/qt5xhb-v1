//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QGEOAREAMONITORSOURCESLOTS_H
#define QGEOAREAMONITORSOURCESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
#include <QtPositioning/QGeoAreaMonitorSource>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QGeoAreaMonitorSourceSlots : public QObject
{
  Q_OBJECT
public:
  QGeoAreaMonitorSourceSlots(QObject *parent = 0);
  ~QGeoAreaMonitorSourceSlots();
public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  void areaEntered(const QGeoAreaMonitorInfo &monitor, const QGeoPositionInfo &update);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  void areaExited(const QGeoAreaMonitorInfo &monitor, const QGeoPositionInfo &update);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  void monitorExpired(const QGeoAreaMonitorInfo &monitor);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5, 2, 0))
  void error(QGeoAreaMonitorSource::Error error);
#endif
};

#endif // QGEOAREAMONITORSOURCESLOTS_H
