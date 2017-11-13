/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQTIMELINE_H
#define SLOTSQTIMELINE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QTimeLine>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQTimeLine: public QObject
{
  Q_OBJECT
  public:
  SlotsQTimeLine(QObject *parent = 0);
  ~SlotsQTimeLine();
  public slots:
  void finished ();
  void frameChanged ( int frame );
  void stateChanged ( QTimeLine::State newState );
  void valueChanged ( qreal value );
};

#endif // SLOTSQTIMELINE_H
