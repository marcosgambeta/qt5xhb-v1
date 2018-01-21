%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQGRAPHICSDROPSHADOWEFFECT_H
#define SLOTSQGRAPHICSDROPSHADOWEFFECT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QGraphicsDropShadowEffect>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGraphicsDropShadowEffect: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsDropShadowEffect(QObject *parent = 0);
  ~SlotsQGraphicsDropShadowEffect();
  public slots:
  void blurRadiusChanged ( qreal blurRadius );
  void colorChanged ( const QColor & color );
  void offsetChanged ( const QPointF & offset );
};

#endif // SLOTSQGRAPHICSDROPSHADOWEFFECT_H
