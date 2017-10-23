/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQABSTRACTAUDIOOUTPUT_H
#define SLOTSQABSTRACTAUDIOOUTPUT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAbstractAudioOutput>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAbstractAudioOutput: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractAudioOutput(QObject *parent = 0);
  ~SlotsQAbstractAudioOutput();
  public slots:
  void errorChanged(QAudio::Error error);
  void stateChanged(QAudio::State state);
  void notify();
};

#endif // SLOTSQABSTRACTAUDIOOUTPUT_H
