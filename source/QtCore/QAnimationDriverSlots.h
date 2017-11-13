/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQANIMATIONDRIVER_H
#define SLOTSQANIMATIONDRIVER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAnimationDriver>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAnimationDriver: public QObject
{
  Q_OBJECT
  public:
  SlotsQAnimationDriver(QObject *parent = 0);
  ~SlotsQAnimationDriver();
  public slots:
  void started();
  void stopped();
};

#endif // SLOTSQANIMATIONDRIVER_H
