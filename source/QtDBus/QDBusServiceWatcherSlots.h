/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQDBUSSERVICEWATCHER_H
#define SLOTSQDBUSSERVICEWATCHER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QDBusServiceWatcher>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQDBusServiceWatcher: public QObject
{
  Q_OBJECT
  public:
  SlotsQDBusServiceWatcher(QObject *parent = 0);
  ~SlotsQDBusServiceWatcher();
  public slots:
  void serviceRegistered(const QString &service);
  void serviceUnregistered(const QString &service);
  void serviceOwnerChanged(const QString &service, const QString &oldOwner, const QString &newOwner);
};

#endif // SLOTSQDBUSSERVICEWATCHER_H
