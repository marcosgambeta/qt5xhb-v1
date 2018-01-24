/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQQUICKWINDOW_H
#define SLOTSQQUICKWINDOW_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QQuickWindow>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQQuickWindow: public QObject
{
  Q_OBJECT
  public:
  SlotsQQuickWindow(QObject *parent = 0);
  ~SlotsQQuickWindow();
  public slots:
  void afterRendering();
  void beforeRendering();
  void beforeSynchronizing();
  void colorChanged(const QColor & color);
  void frameSwapped();
  void sceneGraphInitialized();
  void sceneGraphInvalidated();
};

#endif // SLOTSQQUICKWINDOW_H
