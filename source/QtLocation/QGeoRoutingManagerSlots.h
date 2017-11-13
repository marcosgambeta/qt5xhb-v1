/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQGEOROUTINGMANAGER_H
#define SLOTSQGEOROUTINGMANAGER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoRoutingManager>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGeoRoutingManager: public QObject
{
  Q_OBJECT
  public:
  SlotsQGeoRoutingManager(QObject *parent = 0);
  ~SlotsQGeoRoutingManager();
  public slots:
  void finished(QGeoRouteReply *reply);
  void error(QGeoRouteReply *reply, QGeoRouteReply::Error error, QString errorString = QString());
};

#endif // SLOTSQGEOROUTINGMANAGER_H
