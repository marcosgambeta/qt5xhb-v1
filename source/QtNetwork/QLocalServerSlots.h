/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
