/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQGRAPHICSBLUREFFECT_H
#define SLOTSQGRAPHICSBLUREFFECT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QGraphicsBlurEffect>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGraphicsBlurEffect: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsBlurEffect(QObject *parent = 0);
  ~SlotsQGraphicsBlurEffect();
  public slots:
  void blurHintsChanged ( QGraphicsBlurEffect::BlurHints hints );
  void blurRadiusChanged ( qreal radius );
};

#endif // SLOTSQGRAPHICSBLUREFFECT_H
