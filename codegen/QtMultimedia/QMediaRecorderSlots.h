%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void actualLocationChanged( const QUrl & location );
$signal=|void availabilityChanged( bool available );
$signal=|void availabilityChanged( QMultimedia::AvailabilityStatus availability );
$signal=|void durationChanged( qint64 duration );
$signal=|void error( QMediaRecorder::Error error );
$signal=|void metaDataAvailableChanged( bool available );
$signal=|void metaDataChanged();
$signal=|void metaDataChanged( const QString & key, const QVariant & value );
$signal=|void metaDataWritableChanged( bool writable );
$signal=|void mutedChanged( bool muted );
$signal=|void stateChanged( QMediaRecorder::State state );
$signal=|void statusChanged( QMediaRecorder::Status status );
$signal=|void volumeChanged( qreal volume );
$endSlotsClass
