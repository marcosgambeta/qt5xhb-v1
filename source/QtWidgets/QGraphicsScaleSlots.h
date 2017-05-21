/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQGRAPHICSSCALE_H
#define SLOTSQGRAPHICSSCALE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QGraphicsScale>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGraphicsScale: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsScale(QObject *parent = 0);
  ~SlotsQGraphicsScale();
  public slots:
  void originChanged ();
  void scaleChanged ();
  void xScaleChanged ();
  void yScaleChanged ();
  void zScaleChanged ();
};

#endif // SLOTSQGRAPHICSSCALE_H
