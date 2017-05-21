/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQQUICKPAINTEDITEM_H
#define SLOTSQQUICKPAINTEDITEM_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QQuickPaintedItem>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQQuickPaintedItem: public QObject
{
  Q_OBJECT
  public:
  SlotsQQuickPaintedItem(QObject *parent = 0);
  ~SlotsQQuickPaintedItem();
  public slots:
  void contentsScaleChanged();
  void contentsSizeChanged();
  void fillColorChanged();
  void renderTargetChanged();
};

#endif // SLOTSQQUICKPAINTEDITEM_H
