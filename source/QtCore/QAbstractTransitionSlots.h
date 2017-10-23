/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQABSTRACTTRANSITION_H
#define SLOTSQABSTRACTTRANSITION_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAbstractTransition>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAbstractTransition: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractTransition(QObject *parent = 0);
  ~SlotsQAbstractTransition();
  public slots:
  void triggered();
};

#endif // SLOTSQABSTRACTTRANSITION_H
