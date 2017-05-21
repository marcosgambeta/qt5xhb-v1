/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
