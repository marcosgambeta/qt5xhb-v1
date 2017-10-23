/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQSCREEN_H
#define SLOTSQSCREEN_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QScreen>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQScreen: public QObject
{
  Q_OBJECT
  public:
  SlotsQScreen(QObject *parent = 0);
  ~SlotsQScreen();
  public slots:
  void geometryChanged(const QRect &geometry);
  void physicalSizeChanged(const QSizeF &size);
  void physicalDotsPerInchChanged(qreal dpi);
  void logicalDotsPerInchChanged(qreal dpi);
  void virtualGeometryChanged(const QRect &rect);
  void primaryOrientationChanged(Qt::ScreenOrientation orientation);
  void orientationChanged(Qt::ScreenOrientation orientation);
  void refreshRateChanged(qreal refreshRate);
};

#endif // SLOTSQSCREEN_H
