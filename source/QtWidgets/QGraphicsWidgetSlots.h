/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQGRAPHICSWIDGET_H
#define SLOTSQGRAPHICSWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QGraphicsWidget>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGraphicsWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsWidget(QObject *parent = 0);
  ~SlotsQGraphicsWidget();
  public slots:
  void geometryChanged ();
};

#endif // SLOTSQGRAPHICSWIDGET_H
