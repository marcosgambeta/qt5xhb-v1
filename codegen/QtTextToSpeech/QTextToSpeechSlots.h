%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtTextToSpeech

$header

$includes=5,10,0

$beginSlotsClass
$signal=5,10,0|localeChanged( const QLocale & locale )
$signal=5,10,0|pitchChanged( double pitch )
$signal=5,10,0|rateChanged( double rate )
$signal=5,10,0|stateChanged( QTextToSpeech::State state )
$signal=5,10,0|voiceChanged( const QVoice & voice )
$signal=5,10,0|volumeChanged( int volume )
$endSlotsClass
