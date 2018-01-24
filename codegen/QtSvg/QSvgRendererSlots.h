/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQSVGRENDERER_H
#define SLOTSQSVGRENDERER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QSvgRenderer>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQSvgRenderer: public QObject
{
  Q_OBJECT
  public:
  SlotsQSvgRenderer(QObject *parent = 0);
  ~SlotsQSvgRenderer();
  public slots:
  void repaintNeeded ();
};

#endif // SLOTSQSVGRENDERER_H
