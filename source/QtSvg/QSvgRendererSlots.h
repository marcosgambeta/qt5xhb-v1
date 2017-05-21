/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
