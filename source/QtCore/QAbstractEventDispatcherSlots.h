/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQABSTRACTEVENTDISPATCHER_H
#define SLOTSQABSTRACTEVENTDISPATCHER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAbstractEventDispatcher>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAbstractEventDispatcher: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractEventDispatcher(QObject *parent = 0);
  ~SlotsQAbstractEventDispatcher();
  public slots:
  void aboutToBlock();
  void awake();
};

#endif // SLOTSQABSTRACTEVENTDISPATCHER_H
