/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQRADIOTUNERCONTROL_H
#define SLOTSQRADIOTUNERCONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QRadioTunerControl>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQRadioTunerControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQRadioTunerControl(QObject *parent = 0);
  ~SlotsQRadioTunerControl();
  public slots:
  void stateChanged(QRadioTuner::State state);
  void bandChanged(QRadioTuner::Band band);
  void frequencyChanged(int frequency);
  void stereoStatusChanged(bool stereo);
  void searchingChanged(bool searching);
  void signalStrengthChanged(int signalStrength);
  void volumeChanged(int volume);
  void mutedChanged(bool muted);
  void error(QRadioTuner::Error err);
  void stationFound(int frequency, QString stationId);
  void antennaConnectedChanged(bool connectionStatus);
};

#endif // SLOTSQRADIOTUNERCONTROL_H
