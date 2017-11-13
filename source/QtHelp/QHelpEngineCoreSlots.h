/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQHELPENGINECORE_H
#define SLOTSQHELPENGINECORE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QHelpEngineCore>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQHelpEngineCore: public QObject
{
  Q_OBJECT
  public:
  SlotsQHelpEngineCore(QObject *parent = 0);
  ~SlotsQHelpEngineCore();
  public slots:
  void currentFilterChanged ( const QString & newFilter );
  void setupFinished ();
  void setupStarted ();
  void warning ( const QString & msg );
};

#endif // SLOTSQHELPENGINECORE_H
