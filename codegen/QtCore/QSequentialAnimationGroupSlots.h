/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQSEQUENTIALANIMATIONGROUP_H
#define SLOTSQSEQUENTIALANIMATIONGROUP_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QSequentialAnimationGroup>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQSequentialAnimationGroup: public QObject
{
  Q_OBJECT
  public:
  SlotsQSequentialAnimationGroup(QObject *parent = 0);
  ~SlotsQSequentialAnimationGroup();
  public slots:
  void currentAnimationChanged ( QAbstractAnimation * current );
};

#endif // SLOTSQSEQUENTIALANIMATIONGROUP_H
