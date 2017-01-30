/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQRADIOTUNER_H
#define SLOTSQRADIOTUNER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QRadioTuner>

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
