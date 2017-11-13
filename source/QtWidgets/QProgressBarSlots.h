/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQPROGRESSBAR_H
#define SLOTSQPROGRESSBAR_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QProgressBar>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQProgressBar: public QObject
{
  Q_OBJECT
  public:
  SlotsQProgressBar(QObject *parent = 0);
  ~SlotsQProgressBar();
  public slots:
  void valueChanged ( int value );
};

#endif // SLOTSQPROGRESSBAR_H
