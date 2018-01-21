/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQSCROLLER_H
#define SLOTSQSCROLLER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QScroller>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQScroller: public QObject
{
  Q_OBJECT
  public:
  SlotsQScroller(QObject *parent = 0);
  ~SlotsQScroller();
  public slots:
  void scrollerPropertiesChanged(const QScrollerProperties & newProperties);
  void stateChanged(QScroller::State newState);
};

#endif // SLOTSQSCROLLER_H
