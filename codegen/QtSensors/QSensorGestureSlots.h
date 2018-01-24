/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQSENSORGESTURE_H
#define SLOTSQSENSORGESTURE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensorGesture>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQSensorGesture: public QObject
{
  Q_OBJECT
  public:
  SlotsQSensorGesture(QObject *parent = 0);
  ~SlotsQSensorGesture();
  public slots:
  void detected(QString s);
};

#endif // SLOTSQSENSORGESTURE_H
