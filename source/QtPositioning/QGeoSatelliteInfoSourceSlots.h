/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
