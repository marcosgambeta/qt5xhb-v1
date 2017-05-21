/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQGUIAPPLICATION_H
#define SLOTSQGUIAPPLICATION_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QGuiApplication>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQGuiApplication: public QObject
{
  Q_OBJECT
  public:
  SlotsQGuiApplication(QObject *parent = 0);
  ~SlotsQGuiApplication();
  public slots:
  void focusObjectChanged(QObject * focusObject);
  void focusWindowChanged(QWindow * focusWindow);
  void fontDatabaseChanged();
  void lastWindowClosed();
  void screenAdded(QScreen * screen);
};

#endif // SLOTSQGUIAPPLICATION_H
