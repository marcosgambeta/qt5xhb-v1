/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

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
