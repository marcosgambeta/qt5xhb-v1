/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQWINTASKBARPROGRESS_H
#define SLOTSQWINTASKBARPROGRESS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QWinTaskbarProgress>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQWinTaskbarProgress: public QObject
{
  Q_OBJECT
  public:
  SlotsQWinTaskbarProgress(QObject *parent = 0);
  ~SlotsQWinTaskbarProgress();
  public slots:
  void valueChanged(int value);
  void minimumChanged(int minimum);
  void maximumChanged(int maximum);
  void visibilityChanged(bool visible);
  void pausedChanged(bool paused);
  void stoppedChanged(bool stopped);
};

#endif // SLOTSQWINTASKBARPROGRESS_H
