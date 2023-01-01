/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QGEOROUTINGMANAGERENGINESLOTS_H
#define QGEOROUTINGMANAGERENGINESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QGeoRoutingManagerEngine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QGeoRoutingManagerEngineSlots: public QObject
{
  Q_OBJECT
  public:
  QGeoRoutingManagerEngineSlots( QObject *parent = 0 );
  ~QGeoRoutingManagerEngineSlots();
  public slots:
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void finished( QGeoRouteReply * reply );
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  void error( QGeoRouteReply * reply, QGeoRouteReply::Error error, QString errorString = QString() );
#endif
};

#endif /* QGEOROUTINGMANAGERENGINESLOTS_H */
