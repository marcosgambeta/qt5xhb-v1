/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQAXBASE_H
#define SLOTSQAXBASE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAxBase>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAxBase: public QObject
{
  Q_OBJECT
  public:
  SlotsQAxBase(QObject *parent = 0);
  ~SlotsQAxBase();
  public slots:
  void exception ( int code, const QString & source, const QString & desc, const QString & help );
  void propertyChanged ( const QString & name );
  void signal ( const QString & name, int argc, void * argv );
};

#endif // SLOTSQAXBASE_H
