/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQCOREAPPLICATION_H
#define SLOTSQCOREAPPLICATION_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QCoreApplication>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQCoreApplication: public QObject
{
  Q_OBJECT
  public:
  SlotsQCoreApplication(QObject *parent = 0);
  ~SlotsQCoreApplication();
  public slots:
  void aboutToQuit ();
};

#endif // SLOTSQCOREAPPLICATION_H
