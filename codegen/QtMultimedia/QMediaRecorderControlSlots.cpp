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
$slot=|actualLocationChanged( const QUrl & location )
$slot=|durationChanged( qint64 duration )
$slot=|error( int error, const QString & errorString )
$slot=|mutedChanged( bool muted )
$slot=|stateChanged( QMediaRecorder::State state )
$slot=|statusChanged( QMediaRecorder::Status status )
$slot=|volumeChanged( qreal gain )
$endSlotsClass
