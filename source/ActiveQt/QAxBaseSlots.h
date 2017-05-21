/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
