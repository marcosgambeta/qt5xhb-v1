/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QAUDIOOUTPUTSLOTS_H
#define QAUDIOOUTPUTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QAudioOutput>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QAudioOutputSlots: public QObject
{
  Q_OBJECT
  public:
  QAudioOutputSlots( QObject *parent = 0 );
  ~QAudioOutputSlots();
  public slots:
  void notify();
  void stateChanged( QAudio::State state );
};

#endif /* QAUDIOOUTPUTSLOTS_H */
