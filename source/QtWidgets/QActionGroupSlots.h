/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

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
