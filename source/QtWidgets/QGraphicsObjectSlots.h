/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQGRAPHICSOBJECT_H
#define SLOTSQGRAPHICSOBJECT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QGraphicsObject>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGraphicsObject: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsObject(QObject *parent = 0);
  ~SlotsQGraphicsObject();
  public slots:
  void enabledChanged ();
  void opacityChanged ();
  void parentChanged ();
  void rotationChanged ();
  void scaleChanged ();
  void visibleChanged ();
  void xChanged ();
  void yChanged ();
  void zChanged ();
};

#endif // SLOTSQGRAPHICSOBJECT_H
