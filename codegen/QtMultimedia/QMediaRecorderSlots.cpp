%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

$includes

$beginSlotsClass
$slot=|actualLocationChanged( const QUrl & location )
$slot=|availabilityChanged( bool available )
$slot=|availabilityChanged( QMultimedia::AvailabilityStatus availability )
$slot=|durationChanged( qint64 duration )
$slot=|error( QMediaRecorder::Error error )
$slot=|metaDataAvailableChanged( bool available )
$slot=|metaDataChanged()
$slot=|metaDataChanged( const QString & key, const QVariant & value )
$slot=|metaDataWritableChanged( bool writable )
$slot=|mutedChanged( bool muted )
$slot=|stateChanged( QMediaRecorder::State state )
$slot=|statusChanged( QMediaRecorder::Status status )
$slot=|volumeChanged( qreal volume )
$endSlotsClass
