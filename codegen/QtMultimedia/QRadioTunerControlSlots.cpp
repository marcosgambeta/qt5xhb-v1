%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

$includes

$beginSlotsClass
$slot=|stateChanged( QRadioTuner::State state )
$slot=|bandChanged( QRadioTuner::Band band )
$slot=|frequencyChanged( int frequency )
$slot=|stereoStatusChanged( bool stereo )
$slot=|searchingChanged( bool searching )
$slot=|signalStrengthChanged( int signalStrength )
$slot=|volumeChanged( int volume )
$slot=|mutedChanged( bool muted )
$slot=|error( QRadioTuner::Error err )
$slot=|stationFound( int frequency, QString stationId )
$slot=|antennaConnectedChanged( bool connectionStatus )
$endSlotsClass
