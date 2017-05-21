/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
