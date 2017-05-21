/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQAUDIODECODERCONTROL_H
#define SLOTSQAUDIODECODERCONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAudioDecoderControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAudioDecoderControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQAudioDecoderControl(QObject *parent = 0);
  ~SlotsQAudioDecoderControl();
  public slots:
  void bufferAvailableChanged(bool available);
  void bufferReady();
  void durationChanged(qint64 duration);
  void error(int error, const QString & errorString);
  void finished();
  void formatChanged(const QAudioFormat & format);
  void positionChanged(qint64 position);
  void sourceChanged();
  void stateChanged(QAudioDecoder::State state);
};

#endif // SLOTSQAUDIODECODERCONTROL_H
