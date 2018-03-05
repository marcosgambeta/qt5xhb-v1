%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|audioAvailableChanged( bool available )
$slot=5,6,0|audioRoleChanged( QAudio::Role role )
$slot=|bufferStatusChanged( int percentFilled )
$slot=|currentMediaChanged( const QMediaContent & media )
$slot=|durationChanged( qint64 duration )
$slot=|error( QMediaPlayer::Error error )
$slot=|mediaChanged( const QMediaContent & media )
$slot=|mediaStatusChanged( QMediaPlayer::MediaStatus status )
$slot=|mutedChanged( bool muted )
$slot=|networkConfigurationChanged( const QNetworkConfiguration & configuration )
$slot=|playbackRateChanged( qreal rate )
$slot=|positionChanged( qint64 position )
$slot=|seekableChanged( bool seekable )
$slot=|stateChanged( QMediaPlayer::State state )
$slot=|videoAvailableChanged( bool videoAvailable )
$slot=|volumeChanged( int volume )
$endSlotsClass

$connectSignalFunction
