/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQSTATUSBAR_H
#define SLOTSQSTATUSBAR_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QStatusBar>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQStatusBar: public QObject
{
  Q_OBJECT
  public:
  SlotsQStatusBar(QObject *parent = 0);
  ~SlotsQStatusBar();
  public slots:
  void messageChanged ( const QString & message );
};

#endif // SLOTSQSTATUSBAR_H
