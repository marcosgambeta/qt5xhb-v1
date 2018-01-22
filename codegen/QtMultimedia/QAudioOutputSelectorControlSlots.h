/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQAUDIOOUTPUTSELECTORCONTROL_H
#define SLOTSQAUDIOOUTPUTSELECTORCONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAudioOutputSelectorControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQAudioOutputSelectorControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQAudioOutputSelectorControl(QObject *parent = 0);
  ~SlotsQAudioOutputSelectorControl();
  public slots:
  void activeOutputChanged(const QString & name);
  void availableOutputsChanged();
};

#endif // SLOTSQAUDIOOUTPUTSELECTORCONTROL_H
