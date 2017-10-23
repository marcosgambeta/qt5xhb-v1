/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQLIGHTSENSOR_H
#define SLOTSQLIGHTSENSOR_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QLightSensor>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQLightSensor: public QObject
{
  Q_OBJECT
  public:
  SlotsQLightSensor(QObject *parent = 0);
  ~SlotsQLightSensor();
  public slots:
  void fieldOfViewChanged(qreal fieldOfView);
};

#endif // SLOTSQLIGHTSENSOR_H
