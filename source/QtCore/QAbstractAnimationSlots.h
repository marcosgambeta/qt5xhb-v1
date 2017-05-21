/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQABSTRACTANIMATION_H
#define SLOTSQABSTRACTANIMATION_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAbstractAnimation>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAbstractAnimation: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractAnimation(QObject *parent = 0);
  ~SlotsQAbstractAnimation();
  public slots:
  void currentLoopChanged ( int currentLoop );
  void directionChanged ( QAbstractAnimation::Direction newDirection );
  void finished ();
  void stateChanged ( QAbstractAnimation::State newState, QAbstractAnimation::State oldState );
};

#endif // SLOTSQABSTRACTANIMATION_H
