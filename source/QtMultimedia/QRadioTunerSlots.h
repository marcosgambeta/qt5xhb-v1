/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QRADIOTUNERSLOTS_H
#define QRADIOTUNERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtMultimedia/QRadioTuner>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QRadioTunerSlots: public QObject
{
  Q_OBJECT
  public:
  QRadioTunerSlots(QObject *parent = 0);
  ~QRadioTunerSlots();
  public slots:
  void stateChanged( QRadioTuner::State state );
  void bandChanged( QRadioTuner::Band band );
  void frequencyChanged( int frequency );
  void stereoStatusChanged( bool stereo );
  void searchingChanged( bool searching );
  void signalStrengthChanged( int signalStrength );
  void volumeChanged( int volume );
  void mutedChanged( bool muted );
  void stationFound( int frequency, QString stationId );
  void antennaConnectedChanged( bool connectionStatus );
  void error( QRadioTuner::Error error );
};

#endif /* QRADIOTUNERSLOTS_H */
