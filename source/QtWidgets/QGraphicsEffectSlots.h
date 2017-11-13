/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQGRAPHICSEFFECT_H
#define SLOTSQGRAPHICSEFFECT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QGraphicsEffect>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGraphicsEffect: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsEffect(QObject *parent = 0);
  ~SlotsQGraphicsEffect();
  public slots:
  void enabledChanged ( bool enabled );
};

#endif // SLOTSQGRAPHICSEFFECT_H
