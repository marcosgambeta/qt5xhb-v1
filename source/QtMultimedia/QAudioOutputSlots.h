/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQAUDIOOUTPUT_H
#define SLOTSQAUDIOOUTPUT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAudioOutput>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAudioOutput: public QObject
{
  Q_OBJECT
  public:
  SlotsQAudioOutput(QObject *parent = 0);
  ~SlotsQAudioOutput();
  public slots:
  void notify();
  void stateChanged(QAudio::State state);
};

#endif // SLOTSQAUDIOOUTPUT_H
