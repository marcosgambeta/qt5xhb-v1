/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
