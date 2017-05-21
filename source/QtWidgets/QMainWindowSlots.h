/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
