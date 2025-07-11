//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QAUDIOOUTPUTSLOTS_H
#define QAUDIOOUTPUTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QAudioOutput>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QAudioOutputSlots : public QObject
{
  Q_OBJECT
public:
  QAudioOutputSlots(QObject *parent = 0);
  ~QAudioOutputSlots();
public slots:
  void notify();
  void stateChanged(QAudio::State state);
};

#endif // QAUDIOOUTPUTSLOTS_H
