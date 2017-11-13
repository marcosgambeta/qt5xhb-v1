/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQGEOSATELLITEINFOSOURCE_H
#define SLOTSQGEOSATELLITEINFOSOURCE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoSatelliteInfoSource>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGeoSatelliteInfoSource: public QObject
{
  Q_OBJECT
  public:
  SlotsQGeoSatelliteInfoSource(QObject *parent = 0);
  ~SlotsQGeoSatelliteInfoSource();
  public slots:
  void satellitesInViewUpdated(const QList<QGeoSatelliteInfo> &satellites);
  void satellitesInUseUpdated(const QList<QGeoSatelliteInfo> &satellites);
  void requestTimeout();
  void error(QGeoSatelliteInfoSource::Error error);
};

#endif // SLOTSQGEOSATELLITEINFOSOURCE_H
