/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQTHREAD_H
#define SLOTSQTHREAD_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QThread>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQThread: public QObject
{
  Q_OBJECT
  public:
  SlotsQThread(QObject *parent = 0);
  ~SlotsQThread();
  public slots:
  void finished();
  void started();
};

#endif // SLOTSQTHREAD_H
