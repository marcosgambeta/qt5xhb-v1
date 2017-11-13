/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQSTATE_H
#define SLOTSQSTATE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QState>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQState: public QObject
{
  Q_OBJECT
  public:
  SlotsQState(QObject *parent = 0);
  ~SlotsQState();
  public slots:
  void finished ();
  void propertiesAssigned ();
};

#endif // SLOTSQSTATE_H
