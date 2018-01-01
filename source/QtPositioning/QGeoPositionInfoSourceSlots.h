/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQGEOPOSITIONINFOSOURCE_H
#define SLOTSQGEOPOSITIONINFOSOURCE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoPositionInfoSource>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGeoPositionInfoSource: public QObject
{
  Q_OBJECT
  public:
  SlotsQGeoPositionInfoSource(QObject *parent = 0);
  ~SlotsQGeoPositionInfoSource();
  public slots:
  void positionUpdated(const QGeoPositionInfo &update);
  void updateTimeout();
  void error(QGeoPositionInfoSource::Error);
};

#endif // SLOTSQGEOPOSITIONINFOSOURCE_H
