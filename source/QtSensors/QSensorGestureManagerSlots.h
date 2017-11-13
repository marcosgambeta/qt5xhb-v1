/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQSENSORGESTUREMANAGER_H
#define SLOTSQSENSORGESTUREMANAGER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensorGestureManager>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQSensorGestureManager: public QObject
{
  Q_OBJECT
  public:
  SlotsQSensorGestureManager(QObject *parent = 0);
  ~SlotsQSensorGestureManager();
  public slots:
  void newSensorGestureAvailable();
};

#endif // SLOTSQSENSORGESTUREMANAGER_H
