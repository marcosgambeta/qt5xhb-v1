/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQTIMER_H
#define SLOTSQTIMER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QTimer>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQTimer: public QObject
{
  Q_OBJECT
  public:
  SlotsQTimer(QObject *parent = 0);
  ~SlotsQTimer();
  public slots:
  void timeout ();
};

#endif // SLOTSQTIMER_H
