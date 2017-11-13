/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQAUDIOPROBE_H
#define SLOTSQAUDIOPROBE_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAudioProbe>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAudioProbe: public QObject
{
  Q_OBJECT
  public:
  SlotsQAudioProbe(QObject *parent = 0);
  ~SlotsQAudioProbe();
  public slots:
  void audioBufferProbed(const QAudioBuffer & buffer);
  void flush();
};

#endif // SLOTSQAUDIOPROBE_H
