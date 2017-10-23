/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQSPLITTER_H
#define SLOTSQSPLITTER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QSplitter>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQSplitter: public QObject
{
  Q_OBJECT
  public:
  SlotsQSplitter(QObject *parent = 0);
  ~SlotsQSplitter();
  public slots:
  void splitterMoved ( int pos, int index );
};

#endif // SLOTSQSPLITTER_H
