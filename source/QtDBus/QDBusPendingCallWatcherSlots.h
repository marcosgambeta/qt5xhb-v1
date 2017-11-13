/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQDBUSPENDINGCALLWATCHER_H
#define SLOTSQDBUSPENDINGCALLWATCHER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QDBusPendingCallWatcher>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQDBusPendingCallWatcher: public QObject
{
  Q_OBJECT
  public:
  SlotsQDBusPendingCallWatcher(QObject *parent = 0);
  ~SlotsQDBusPendingCallWatcher();
  public slots:
  void finished(QDBusPendingCallWatcher *self);
};

#endif // SLOTSQDBUSPENDINGCALLWATCHER_H
