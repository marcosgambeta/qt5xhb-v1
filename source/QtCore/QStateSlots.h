/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQSTATE_H
#define SLOTSQSTATE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QState>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQState: public QObject
{
  Q_OBJECT
  public:
  SlotsQState(QObject *parent = 0);
  ~SlotsQState();
  public slots:
  void finished ();
  void propertiesAssigned ();
};

#endif // SLOTSQSTATE_H
