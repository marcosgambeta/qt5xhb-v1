/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQSOUNDEFFECT_H
#define SLOTSQSOUNDEFFECT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QSoundEffect>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQSoundEffect: public QObject
{
  Q_OBJECT
  public:
  SlotsQSoundEffect(QObject *parent = 0);
  ~SlotsQSoundEffect();
  public slots:
  void sourceChanged();
  void loopCountChanged();
  void loopsRemainingChanged();
  void volumeChanged();
  void mutedChanged();
  void loadedChanged();
  void playingChanged();
  void statusChanged();
  void categoryChanged();
};

#endif // SLOTSQSOUNDEFFECT_H
