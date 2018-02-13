%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void audioAvailableChanged( bool audio )
$signal=|void availablePlaybackRangesChanged( const QMediaTimeRange & ranges )
$signal=|void bufferStatusChanged( int progress )
$signal=|void durationChanged( qint64 duration )
$signal=|void error( int error, const QString & errorString )
$signal=|void mediaChanged( const QMediaContent & content )
$signal=|void mediaStatusChanged( QMediaPlayer::MediaStatus status )
$signal=|void mutedChanged( bool mute )
$signal=|void playbackRateChanged( qreal rate )
$signal=|void positionChanged( qint64 position )
$signal=|void seekableChanged( bool seekable )
$signal=|void stateChanged( QMediaPlayer::State state )
$signal=|void videoAvailableChanged( bool video )
$signal=|void volumeChanged( int volume )
$endSlotsClass
