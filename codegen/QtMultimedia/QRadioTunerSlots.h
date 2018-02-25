%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|stateChanged( QRadioTuner::State state )
$signal=|bandChanged( QRadioTuner::Band band )
$signal=|frequencyChanged( int frequency )
$signal=|stereoStatusChanged( bool stereo )
$signal=|searchingChanged( bool searching )
$signal=|signalStrengthChanged( int signalStrength )
$signal=|volumeChanged( int volume )
$signal=|mutedChanged( bool muted )
$signal=|stationFound( int frequency, QString stationId )
$signal=|antennaConnectedChanged( bool connectionStatus )
$signal=|error( QRadioTuner::Error error )
$endSlotsClass
