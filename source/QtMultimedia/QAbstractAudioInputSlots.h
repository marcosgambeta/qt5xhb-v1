/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQABSTRACTAUDIOINPUT_H
#define SLOTSQABSTRACTAUDIOINPUT_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAbstractAudioInput>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAbstractAudioInput: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractAudioInput(QObject *parent = 0);
  ~SlotsQAbstractAudioInput();
  public slots:
  void errorChanged(QAudio::Error error);
  void stateChanged(QAudio::State state);
  void notify();
};

#endif // SLOTSQABSTRACTAUDIOINPUT_H
