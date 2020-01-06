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
$signal=|bufferFormatChanged( QVideoFrame::PixelFormat format )
$signal=|captureDestinationChanged( QCameraImageCapture::CaptureDestinations destination )
$signal=|error( int id, QCameraImageCapture::Error error, const QString & errorString )
$signal=|imageAvailable( int id, const QVideoFrame & buffer )
$signal=|imageCaptured( int id, const QImage & preview )
$signal=|imageExposed( int id )
$signal=|imageMetadataAvailable( int id, const QString & key, const QVariant & value )
$signal=|imageSaved( int id, const QString & fileName )
$signal=|readyForCaptureChanged( bool ready )
$endSlotsClass
