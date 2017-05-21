/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
