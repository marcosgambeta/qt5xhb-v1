/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQACTION_H
#define SLOTSQACTION_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAction>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAction: public QObject
{
  Q_OBJECT
  public:
  SlotsQAction(QObject *parent = 0);
  ~SlotsQAction();
  public slots:
  void changed ();
  void hovered ();
  void toggled ( bool checked );
  void triggered ( bool checked = false );
};

#endif // SLOTSQACTION_H
