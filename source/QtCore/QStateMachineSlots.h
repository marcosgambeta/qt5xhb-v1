/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQSTATEMACHINE_H
#define SLOTSQSTATEMACHINE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QStateMachine>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQStateMachine: public QObject
{
  Q_OBJECT
  public:
  SlotsQStateMachine(QObject *parent = 0);
  ~SlotsQStateMachine();
  public slots:
  void started ();
  void stopped ();
};

#endif // SLOTSQSTATEMACHINE_H
