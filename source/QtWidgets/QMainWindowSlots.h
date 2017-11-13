/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQMAINWINDOW_H
#define SLOTSQMAINWINDOW_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMainWindow>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQMainWindow: public QObject
{
  Q_OBJECT
  public:
  SlotsQMainWindow(QObject *parent = 0);
  ~SlotsQMainWindow();
  public slots:
  void iconSizeChanged ( const QSize & iconSize );
  void toolButtonStyleChanged ( Qt::ToolButtonStyle toolButtonStyle );
};

#endif // SLOTSQMAINWINDOW_H
