/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQAUDIOINPUTSELECTORCONTROL_H
#define SLOTSQAUDIOINPUTSELECTORCONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAudioInputSelectorControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAudioInputSelectorControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQAudioInputSelectorControl(QObject *parent = 0);
  ~SlotsQAudioInputSelectorControl();
  public slots:
  void activeInputChanged(const QString & name);
  void availableInputsChanged();
};

#endif // SLOTSQAUDIOINPUTSELECTORCONTROL_H
