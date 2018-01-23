/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQDBUSSERVER_H
#define SLOTSQDBUSSERVER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QDBusServer>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQDBusServer: public QObject
{
  Q_OBJECT
  public:
  SlotsQDBusServer(QObject *parent = 0);
  ~SlotsQDBusServer();
  public slots:
  void newConnection(const QDBusConnection &connection);
};

#endif // SLOTSQDBUSSERVER_H
