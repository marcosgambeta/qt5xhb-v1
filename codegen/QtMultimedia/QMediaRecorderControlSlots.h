%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

$includes

$beginSlotsClass
$signal=|actualLocationChanged( const QUrl & location )
$signal=|durationChanged( qint64 duration )
$signal=|error( int error, const QString & errorString )
$signal=|mutedChanged( bool muted )
$signal=|stateChanged( QMediaRecorder::State state )
$signal=|statusChanged( QMediaRecorder::Status status )
$signal=|volumeChanged( qreal gain )
$endSlotsClass
