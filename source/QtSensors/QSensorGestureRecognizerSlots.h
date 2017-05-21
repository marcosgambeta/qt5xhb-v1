/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQSENSORGESTURERECOGNIZER_H
#define SLOTSQSENSORGESTURERECOGNIZER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensorGestureRecognizer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQSensorGestureRecognizer: public QObject
{
  Q_OBJECT
  public:
  SlotsQSensorGestureRecognizer(QObject *parent = 0);
  ~SlotsQSensorGestureRecognizer();
  public slots:
  void detected(const QString & s);
};

#endif // SLOTSQSENSORGESTURERECOGNIZER_H
