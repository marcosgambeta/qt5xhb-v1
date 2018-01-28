%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void stateChanged( QRadioTuner::State state );
$signal=|void bandChanged( QRadioTuner::Band band );
$signal=|void frequencyChanged( int frequency );
$signal=|void stereoStatusChanged( bool stereo );
$signal=|void searchingChanged( bool searching );
$signal=|void signalStrengthChanged( int signalStrength );
$signal=|void volumeChanged( int volume );
$signal=|void mutedChanged( bool muted );
$signal=|void error( QRadioTuner::Error err );
$signal=|void stationFound( int frequency, QString stationId );
$signal=|void antennaConnectedChanged( bool connectionStatus );
$endSlotsClass
