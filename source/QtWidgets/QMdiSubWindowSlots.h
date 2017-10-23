/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQMDISUBWINDOW_H
#define SLOTSQMDISUBWINDOW_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMdiSubWindow>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQMdiSubWindow: public QObject
{
  Q_OBJECT
  public:
  SlotsQMdiSubWindow(QObject *parent = 0);
  ~SlotsQMdiSubWindow();
  public slots:
  void aboutToActivate ();
  void windowStateChanged ( Qt::WindowStates oldState, Qt::WindowStates newState );
};

#endif // SLOTSQMDISUBWINDOW_H
