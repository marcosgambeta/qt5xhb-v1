%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$signalMethod=|actualLocationChanged(QUrl)
$beginGroup
$signalMethod=|availabilityChanged(bool)
$signalMethod=|availabilityChanged(QMultimedia::AvailabilityStatus)
$endGroup
$signalMethod=|durationChanged(qint64)
$signalMethod=|error(QMediaRecorder::Error)
$signalMethod=|metaDataAvailableChanged(bool)
$beginGroup
$signalMethod=|metaDataChanged()
$signalMethod=|metaDataChanged(QString,QVariant)
$endGroup
$signalMethod=|metaDataWritableChanged(bool)
$signalMethod=|mutedChanged(bool)
$signalMethod=|stateChanged(QMediaRecorder::State)
$signalMethod=|statusChanged(QMediaRecorder::Status)
$signalMethod=|volumeChanged(qreal)

$endSlotsClass
