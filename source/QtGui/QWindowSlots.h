/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQWINDOW_H
#define SLOTSQWINDOW_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QWindow>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQWindow: public QObject
{
  Q_OBJECT
  public:
  SlotsQWindow(QObject *parent = 0);
  ~SlotsQWindow();
  public slots:
  void contentOrientationChanged(Qt::ScreenOrientation orientation);
  void focusObjectChanged(QObject * focusObject);
  void heightChanged(int arg);
  void screenChanged(QScreen * screen);
  void visibleChanged(bool arg);
  void widthChanged(int arg);
  void windowModalityChanged(Qt::WindowModality windowModality);
  void xChanged(int arg);
  void yChanged(int arg);
};

#endif // SLOTSQWINDOW_H
