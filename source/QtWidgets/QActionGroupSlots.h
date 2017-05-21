/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQACTIONGROUP_H
#define SLOTSQACTIONGROUP_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QActionGroup>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQActionGroup: public QObject
{
  Q_OBJECT
  public:
  SlotsQActionGroup(QObject *parent = 0);
  ~SlotsQActionGroup();
  public slots:
  void hovered ( QAction * action );
  void triggered ( QAction * action );
};

#endif // SLOTSQACTIONGROUP_H
