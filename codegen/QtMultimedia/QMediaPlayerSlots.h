%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

$includes

$beginSlotsClass
$signal=|audioAvailableChanged( bool available )
$signal=5,6,0|audioRoleChanged( QAudio::Role role )
$signal=|bufferStatusChanged( int percentFilled )
$signal=|currentMediaChanged( const QMediaContent & media )
$signal=|durationChanged( qint64 duration )
$signal=|error( QMediaPlayer::Error error )
$signal=|mediaChanged( const QMediaContent & media )
$signal=|mediaStatusChanged( QMediaPlayer::MediaStatus status )
$signal=|mutedChanged( bool muted )
$signal=|networkConfigurationChanged( const QNetworkConfiguration & configuration )
$signal=|playbackRateChanged( qreal rate )
$signal=|positionChanged( qint64 position )
$signal=|seekableChanged( bool seekable )
$signal=|stateChanged( QMediaPlayer::State state )
$signal=|videoAvailableChanged( bool videoAvailable )
$signal=|volumeChanged( int volume )
$endSlotsClass
