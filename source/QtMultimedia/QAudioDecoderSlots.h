/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQAUDIODECODER_H
#define SLOTSQAUDIODECODER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAudioDecoder>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAudioDecoder: public QObject
{
  Q_OBJECT
  public:
  SlotsQAudioDecoder(QObject *parent = 0);
  ~SlotsQAudioDecoder();
  public slots:
  void bufferAvailableChanged(bool available);
  void bufferReady();
  void durationChanged(qint64 duration);
  void error(QAudioDecoder::Error error);
  void finished();
  void formatChanged(const QAudioFormat & format);
  void positionChanged(qint64 position);
  void sourceChanged();
  void stateChanged(QAudioDecoder::State state);
};

#endif // SLOTSQAUDIODECODER_H
