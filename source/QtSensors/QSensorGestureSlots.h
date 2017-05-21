/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
