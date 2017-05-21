/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
