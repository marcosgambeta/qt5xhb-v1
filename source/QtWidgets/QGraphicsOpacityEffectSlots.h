/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQGRAPHICSOPACITYEFFECT_H
#define SLOTSQGRAPHICSOPACITYEFFECT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QGraphicsOpacityEffect>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGraphicsOpacityEffect: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsOpacityEffect(QObject *parent = 0);
  ~SlotsQGraphicsOpacityEffect();
  public slots:
  void opacityChanged ( qreal opacity );
  void opacityMaskChanged ( const QBrush & mask );
};

#endif // SLOTSQGRAPHICSOPACITYEFFECT_H
