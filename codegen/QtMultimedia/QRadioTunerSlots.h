%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
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
$endSlotsClass
