/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQDECLARATIVEENGINE_H
#define SLOTSQDECLARATIVEENGINE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QDeclarativeEngine>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQDeclarativeEngine: public QObject
{
  Q_OBJECT
  public:
  SlotsQDeclarativeEngine(QObject *parent = 0);
  ~SlotsQDeclarativeEngine();
  public slots:
  void quit ();
  void warnings ( const QList<QDeclarativeError> & warnings );
};

#endif // SLOTSQDECLARATIVEENGINE_H
