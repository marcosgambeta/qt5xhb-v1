%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void audioAvailableChanged( bool available );
$signal=5,6,0|void audioRoleChanged( QAudio::Role role );
$signal=|void bufferStatusChanged( int percentFilled );
$signal=|void currentMediaChanged( const QMediaContent & media );
$signal=|void durationChanged( qint64 duration );
$signal=|void error( QMediaPlayer::Error error );
$signal=|void mediaChanged( const QMediaContent & media );
$signal=|void mediaStatusChanged( QMediaPlayer::MediaStatus status );
$signal=|void mutedChanged( bool muted );
$signal=|void networkConfigurationChanged( const QNetworkConfiguration & configuration );
$signal=|void playbackRateChanged( qreal rate );
$signal=|void positionChanged( qint64 position );
$signal=|void seekableChanged( bool seekable );
$signal=|void stateChanged( QMediaPlayer::State state );
$signal=|void videoAvailableChanged( bool videoAvailable );
$signal=|void volumeChanged( int volume );
$endSlotsClass
