/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQHELPSEARCHENGINE_H
#define SLOTSQHELPSEARCHENGINE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QHelpSearchEngine>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQHelpSearchEngine: public QObject
{
  Q_OBJECT
  public:
  SlotsQHelpSearchEngine(QObject *parent = 0);
  ~SlotsQHelpSearchEngine();
  public slots:
  void indexingFinished ();
  void indexingStarted ();
  void searchingFinished ( int hits );
  void searchingStarted ();
};

#endif // SLOTSQHELPSEARCHENGINE_H
