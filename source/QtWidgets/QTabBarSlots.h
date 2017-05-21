/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQTABBAR_H
#define SLOTSQTABBAR_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QTabBar>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQTabBar: public QObject
{
  Q_OBJECT
  public:
  SlotsQTabBar(QObject *parent = 0);
  ~SlotsQTabBar();
  public slots:
  void currentChanged ( int index );
  void tabCloseRequested ( int index );
  void tabMoved ( int from, int to );
};

#endif // SLOTSQTABBAR_H
