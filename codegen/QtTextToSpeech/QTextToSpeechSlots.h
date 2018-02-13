%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,10,0

$beginSlotsClass
$signal=5,10,0|void localeChanged( const QLocale & locale )
$signal=5,10,0|void pitchChanged( double pitch )
$signal=5,10,0|void rateChanged( double rate )
$signal=5,10,0|void stateChanged( QTextToSpeech::State state )
$signal=5,10,0|void voiceChanged( const QVoice & voice )
$signal=5,10,0|void volumeChanged( int volume )
$endSlotsClass
