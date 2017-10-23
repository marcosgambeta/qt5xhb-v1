/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQGRAPHICSSCENE_H
#define SLOTSQGRAPHICSSCENE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QGraphicsScene>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGraphicsScene: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsScene(QObject *parent = 0);
  ~SlotsQGraphicsScene();
  public slots:
  void changed ( const QList<QRectF> & region );
  void sceneRectChanged ( const QRectF & rect );
  void selectionChanged ();
};

#endif // SLOTSQGRAPHICSSCENE_H
