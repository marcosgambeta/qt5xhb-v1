/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQGEOAREAMONITORSOURCE_H
#define SLOTSQGEOAREAMONITORSOURCE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoAreaMonitorSource>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGeoAreaMonitorSource: public QObject
{
  Q_OBJECT
  public:
  SlotsQGeoAreaMonitorSource(QObject *parent = 0);
  ~SlotsQGeoAreaMonitorSource();
  public slots:
  void areaEntered(const QGeoAreaMonitorInfo &monitor, const QGeoPositionInfo &update);
  void areaExited(const QGeoAreaMonitorInfo &monitor, const QGeoPositionInfo &update);
  void monitorExpired(const QGeoAreaMonitorInfo &monitor);
  void error(QGeoAreaMonitorSource::Error error);
};

#endif // SLOTSQGEOAREAMONITORSOURCE_H
