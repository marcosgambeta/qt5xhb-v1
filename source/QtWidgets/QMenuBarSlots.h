/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQMENUBAR_H
#define SLOTSQMENUBAR_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMenuBar>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQMenuBar: public QObject
{
  Q_OBJECT
  public:
  SlotsQMenuBar(QObject *parent = 0);
  ~SlotsQMenuBar();
  public slots:
  void hovered ( QAction * action );
  void triggered ( QAction * action );
};

#endif // SLOTSQMENUBAR_H
