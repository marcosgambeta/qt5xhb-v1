/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQMEDIAGAPLESSPLAYBACKCONTROL_H
#define SLOTSQMEDIAGAPLESSPLAYBACKCONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMediaGaplessPlaybackControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQMediaGaplessPlaybackControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQMediaGaplessPlaybackControl(QObject *parent = 0);
  ~SlotsQMediaGaplessPlaybackControl();
  public slots:
  void advancedToNextMedia();
  void crossfadeTimeChanged(qreal crossfadeTime);
  void nextMediaChanged(const QMediaContent & media);
};

#endif // SLOTSQMEDIAGAPLESSPLAYBACKCONTROL_H
