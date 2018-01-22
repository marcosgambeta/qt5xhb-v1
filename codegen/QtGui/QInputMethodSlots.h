/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQINPUTMETHOD_H
#define SLOTSQINPUTMETHOD_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QInputMethod>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQInputMethod: public QObject
{
  Q_OBJECT
  public:
  SlotsQInputMethod(QObject *parent = 0);
  ~SlotsQInputMethod();
  public slots:
  void animatingChanged();
  void cursorRectangleChanged();
  void inputDirectionChanged(Qt::LayoutDirection newDirection);
  void keyboardRectangleChanged();
  void localeChanged();
  void visibleChanged();
};

#endif // SLOTSQINPUTMETHOD_H
