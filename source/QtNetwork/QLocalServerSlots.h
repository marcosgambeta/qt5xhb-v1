/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQLOCALSERVER_H
#define SLOTSQLOCALSERVER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QLocalServer>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQLocalServer: public QObject
{
  Q_OBJECT
  public:
  SlotsQLocalServer(QObject *parent = 0);
  ~SlotsQLocalServer();
  public slots:
  void newConnection ();
};

#endif // SLOTSQLOCALSERVER_H
