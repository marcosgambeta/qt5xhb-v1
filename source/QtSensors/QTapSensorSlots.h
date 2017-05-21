/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQTAPSENSOR_H
#define SLOTSQTAPSENSOR_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QTapSensor>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQTapSensor: public QObject
{
  Q_OBJECT
  public:
  SlotsQTapSensor(QObject *parent = 0);
  ~SlotsQTapSensor();
  public slots:
  void returnDoubleTapEventsChanged(bool returnDoubleTapEvents);
};

#endif // SLOTSQTAPSENSOR_H
