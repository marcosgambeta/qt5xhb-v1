//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QAUDIODECODERCONTROLSLOTS_H
#define QAUDIODECODERCONTROLSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QAudioDecoderControl>

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_signals.hpp"

class QAudioDecoderControlSlots : public QObject
{
  Q_OBJECT
public:
  QAudioDecoderControlSlots(QObject *parent = 0);
  ~QAudioDecoderControlSlots();
public slots:
  void bufferAvailableChanged(bool available);
  void bufferReady();
  void durationChanged(qint64 duration);
  void error(int error, const QString &errorString);
  void finished();
  void formatChanged(const QAudioFormat &format);
  void positionChanged(qint64 position);
  void sourceChanged();
  void stateChanged(QAudioDecoder::State state);
};

#endif // QAUDIODECODERCONTROLSLOTS_H
