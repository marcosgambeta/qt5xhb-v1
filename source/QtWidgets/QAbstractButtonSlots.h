/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQABSTRACTBUTTON_H
#define SLOTSQABSTRACTBUTTON_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAbstractButton>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAbstractButton: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractButton(QObject *parent = 0);
  ~SlotsQAbstractButton();
  public slots:
  void clicked ( bool checked = false );
  void pressed ();
  void released ();
  void toggled ( bool checked );
};

#endif // SLOTSQABSTRACTBUTTON_H
