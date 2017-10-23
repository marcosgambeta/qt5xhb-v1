/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQAUDIORECORDER_H
#define SLOTSQAUDIORECORDER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAudioRecorder>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAudioRecorder: public QObject
{
  Q_OBJECT
  public:
  SlotsQAudioRecorder(QObject *parent = 0);
  ~SlotsQAudioRecorder();
  public slots:
  void audioInputChanged(const QString & name);
  void availableAudioInputsChanged();
};

#endif // SLOTSQAUDIORECORDER_H
