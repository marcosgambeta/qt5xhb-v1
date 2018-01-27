%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|audioAvailableChanged( bool audio )
$slot=|availablePlaybackRangesChanged( const QMediaTimeRange & ranges )
$slot=|bufferStatusChanged( int progress )
$slot=|durationChanged( qint64 duration )
$slot=|error( int error, const QString & errorString )
$slot=|mediaChanged( const QMediaContent & content )
$slot=|mediaStatusChanged( QMediaPlayer::MediaStatus status )
$slot=|mutedChanged( bool mute )
$slot=|playbackRateChanged( qreal rate )
$slot=|positionChanged( qint64 position )
$slot=|seekableChanged( bool seekable )
$slot=|stateChanged( QMediaPlayer::State state )
$slot=|videoAvailableChanged( bool video )
$slot=|volumeChanged( int volume )
$endSlotsClass

$signalMethod=|audioAvailableChanged(bool)
$signalMethod=|availablePlaybackRangesChanged(QMediaTimeRange)
$signalMethod=|bufferStatusChanged(int)
$signalMethod=|durationChanged(qint64)
$signalMethod=|error(int,QString)
$signalMethod=|mediaChanged(QMediaContent)
$signalMethod=|mediaStatusChanged(QMediaPlayer::MediaStatus)
$signalMethod=|mutedChanged(bool)
$signalMethod=|playbackRateChanged(qreal)
$signalMethod=|positionChanged(qint64)
$signalMethod=|seekableChanged(bool)
$signalMethod=|stateChanged(QMediaPlayer::State)
$signalMethod=|videoAvailableChanged(bool)
$signalMethod=|volumeChanged(int)
