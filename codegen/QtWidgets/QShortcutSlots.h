/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQSHORTCUT_H
#define SLOTSQSHORTCUT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QShortcut>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQShortcut: public QObject
{
  Q_OBJECT
  public:
  SlotsQShortcut(QObject *parent = 0);
  ~SlotsQShortcut();
  public slots:
  void activated();
  void activatedAmbiguously();
};

#endif // SLOTSQSHORTCUT_H
