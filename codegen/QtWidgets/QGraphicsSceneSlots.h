%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

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
