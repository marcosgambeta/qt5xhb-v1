/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQGEOCODINGMANAGER_H
#define SLOTSQGEOCODINGMANAGER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QGeoCodingManager>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGeoCodingManager: public QObject
{
  Q_OBJECT
  public:
  SlotsQGeoCodingManager(QObject *parent = 0);
  ~SlotsQGeoCodingManager();
  public slots:
  void finished(QGeoCodeReply *reply);
  void error(QGeoCodeReply *reply, QGeoCodeReply::Error error, QString errorString = QString());
};

#endif // SLOTSQGEOCODINGMANAGER_H
