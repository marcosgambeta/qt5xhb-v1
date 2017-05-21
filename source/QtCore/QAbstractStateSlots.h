/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQABSTRACTSTATE_H
#define SLOTSQABSTRACTSTATE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAbstractState>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAbstractState: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractState(QObject *parent = 0);
  ~SlotsQAbstractState();
  public slots:
  void entered();
  void exited();
};

#endif // SLOTSQABSTRACTSTATE_H
