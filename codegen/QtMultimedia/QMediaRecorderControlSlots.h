%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void actualLocationChanged( const QUrl & location )
$signal=|void durationChanged( qint64 duration )
$signal=|void error( int error, const QString & errorString )
$signal=|void mutedChanged( bool muted )
$signal=|void stateChanged( QMediaRecorder::State state )
$signal=|void statusChanged( QMediaRecorder::Status status )
$signal=|void volumeChanged( qreal gain )
$endSlotsClass
