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
$slot=|bufferAvailableChanged( bool available )
$slot=|bufferReady()
$slot=|durationChanged( qint64 duration )
$slot=|error( QAudioDecoder::Error error )
$slot=|finished()
$slot=|formatChanged( const QAudioFormat & format )
$slot=|positionChanged( qint64 position )
$slot=|sourceChanged()
$slot=|stateChanged( QAudioDecoder::State state )
$endSlotsClass
