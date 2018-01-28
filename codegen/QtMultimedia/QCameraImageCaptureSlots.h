%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void bufferFormatChanged( QVideoFrame::PixelFormat format );
$signal=|void captureDestinationChanged( QCameraImageCapture::CaptureDestinations destination );
$signal=|void error( int id, QCameraImageCapture::Error error, const QString & errorString );
$signal=|void imageAvailable( int id, const QVideoFrame & buffer );
$signal=|void imageCaptured( int id, const QImage & preview );
$signal=|void imageExposed( int id );
$signal=|void imageMetadataAvailable( int id, const QString & key, const QVariant & value );
$signal=|void imageSaved( int id, const QString & fileName );
$signal=|void readyForCaptureChanged( bool ready );
$endSlotsClass
