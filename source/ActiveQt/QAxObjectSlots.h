/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQAXOBJECT_H
#define SLOTSQAXOBJECT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAxObject>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAxObject: public QObject
{
  Q_OBJECT
  public:
  SlotsQAxObject(QObject *parent = 0);
  ~SlotsQAxObject();
  public slots:
  void exception ( int code, const QString & source, const QString & desc, const QString & help );
  void propertyChanged ( const QString & name );
  void signal ( const QString & name, int argc, void * argv );
};

#endif // SLOTSQAXOBJECT_H
