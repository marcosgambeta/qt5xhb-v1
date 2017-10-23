/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQDBUSCONNECTIONINTERFACE_H
#define SLOTSQDBUSCONNECTIONINTERFACE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QDBusConnectionInterface>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQDBusConnectionInterface: public QObject
{
  Q_OBJECT
  public:
  SlotsQDBusConnectionInterface(QObject *parent = 0);
  ~SlotsQDBusConnectionInterface();
  public slots:
  void serviceRegistered(const QString &service);
  void serviceUnregistered(const QString &service);
  void serviceOwnerChanged(const QString &name, const QString &oldOwner, const QString &newOwner);
  void callWithCallbackFailed(const QDBusError &error, const QDBusMessage &call);
};

#endif // SLOTSQDBUSCONNECTIONINTERFACE_H
