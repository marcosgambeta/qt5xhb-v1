/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
