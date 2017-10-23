/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQRADIOTUNER_H
#define SLOTSQRADIOTUNER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QRadioTuner>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQRadioTuner: public QObject
{
  Q_OBJECT
  public:
  SlotsQRadioTuner(QObject *parent = 0);
  ~SlotsQRadioTuner();
  public slots:
  void stateChanged(QRadioTuner::State state);
  void bandChanged(QRadioTuner::Band band);
  void frequencyChanged(int frequency);
  void stereoStatusChanged(bool stereo);
  void searchingChanged(bool searching);
  void signalStrengthChanged(int signalStrength);
  void volumeChanged(int volume);
  void mutedChanged(bool muted);
  void stationFound(int frequency, QString stationId);
  void antennaConnectedChanged(bool connectionStatus);
  void error(QRadioTuner::Error error);
};

#endif // SLOTSQRADIOTUNER_H
