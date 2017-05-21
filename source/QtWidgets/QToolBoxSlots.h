/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQTOOLBOX_H
#define SLOTSQTOOLBOX_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QToolBox>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQToolBox: public QObject
{
  Q_OBJECT
  public:
  SlotsQToolBox(QObject *parent = 0);
  ~SlotsQToolBox();
  public slots:
  void currentChanged ( int index );
};

#endif // SLOTSQTOOLBOX_H
