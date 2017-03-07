/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQRADIOTUNERCONTROL_H
#define SLOTSQRADIOTUNERCONTROL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QRadioTunerControl>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

bool Signals_connect_signal ( QObject * object, QString signal, PHB_ITEM codeblock );
bool Signals_disconnect_signal ( QObject * object, QString signal );
bool Signals_is_signal_connected( QObject * object, QString signal );
PHB_ITEM Signals_return_codeblock ( QObject * object, QString signal );
void Signals_release_codeblocks ();
void Signals_disconnect_all_signals (QObject * obj);
bool Signals_connection_disconnection ( QObject * s, QString signal, QString slot );

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
