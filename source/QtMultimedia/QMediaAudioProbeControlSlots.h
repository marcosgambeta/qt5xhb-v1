/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQMEDIAAUDIOPROBECONTROL_H
#define SLOTSQMEDIAAUDIOPROBECONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMediaAudioProbeControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQMediaAudioProbeControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQMediaAudioProbeControl(QObject *parent = 0);
  ~SlotsQMediaAudioProbeControl();
  public slots:
  void audioBufferProbed(const QAudioBuffer & buffer);
  void flush();
};

#endif // SLOTSQMEDIAAUDIOPROBECONTROL_H
