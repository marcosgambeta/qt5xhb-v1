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
$signal=|audioAvailableChanged( bool audio )
$signal=|availablePlaybackRangesChanged( const QMediaTimeRange & ranges )
$signal=|bufferStatusChanged( int progress )
$signal=|durationChanged( qint64 duration )
$signal=|error( int error, const QString & errorString )
$signal=|mediaChanged( const QMediaContent & content )
$signal=|mediaStatusChanged( QMediaPlayer::MediaStatus status )
$signal=|mutedChanged( bool mute )
$signal=|playbackRateChanged( qreal rate )
$signal=|positionChanged( qint64 position )
$signal=|seekableChanged( bool seekable )
$signal=|stateChanged( QMediaPlayer::State state )
$signal=|videoAvailableChanged( bool video )
$signal=|volumeChanged( int volume )
$endSlotsClass
