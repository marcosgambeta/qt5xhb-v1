/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQCLIPBOARD_H
#define SLOTSQCLIPBOARD_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QClipboard>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQClipboard: public QObject
{
  Q_OBJECT
  public:
  SlotsQClipboard(QObject *parent = 0);
  ~SlotsQClipboard();
  public slots:
  void changed ( QClipboard::Mode mode );
  void dataChanged ();
  void findBufferChanged ();
  void selectionChanged ();
};

#endif // SLOTSQCLIPBOARD_H
