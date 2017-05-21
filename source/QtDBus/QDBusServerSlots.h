/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
