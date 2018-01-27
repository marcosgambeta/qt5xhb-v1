%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$signalMethod=|actualLocationChanged(QUrl)
$signalMethod=|durationChanged(qint64)
$signalMethod=|error(int,QString)
$signalMethod=|mutedChanged(bool)
$signalMethod=|stateChanged(QMediaRecorder::State)
$signalMethod=|statusChanged(QMediaRecorder::Status)
$signalMethod=|volumeChanged(qreal)
