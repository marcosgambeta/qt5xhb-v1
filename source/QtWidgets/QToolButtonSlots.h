/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQTOOLBUTTON_H
#define SLOTSQTOOLBUTTON_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QToolButton>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQToolButton: public QObject
{
  Q_OBJECT
  public:
  SlotsQToolButton(QObject *parent = 0);
  ~SlotsQToolButton();
  public slots:
  void triggered ( QAction * action );
};

#endif // SLOTSQTOOLBUTTON_H
