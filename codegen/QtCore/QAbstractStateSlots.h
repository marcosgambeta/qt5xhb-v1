/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQABSTRACTSTATE_H
#define SLOTSQABSTRACTSTATE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAbstractState>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAbstractState: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractState(QObject *parent = 0);
  ~SlotsQAbstractState();
  public slots:
  void entered();
  void exited();
};

#endif // SLOTSQABSTRACTSTATE_H
