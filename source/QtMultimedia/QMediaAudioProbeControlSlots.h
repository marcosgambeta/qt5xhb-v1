/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QMEDIAAUDIOPROBECONTROLSLOTS_H
#define QMEDIAAUDIOPROBECONTROLSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QMediaAudioProbeControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QMediaAudioProbeControlSlots: public QObject
{
  Q_OBJECT
  public:
  QMediaAudioProbeControlSlots(QObject *parent = 0);
  ~QMediaAudioProbeControlSlots();
  public slots:
  void audioBufferProbed( const QAudioBuffer & buffer );
  void flush();
};

#endif /* QMEDIAAUDIOPROBECONTROLSLOTS_H */
