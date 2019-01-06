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
$slot=|bufferFormatChanged( QVideoFrame::PixelFormat format )
$slot=|captureDestinationChanged( QCameraImageCapture::CaptureDestinations destination )
$slot=|error( int id, QCameraImageCapture::Error error, const QString & errorString )
$slot=|imageAvailable( int id, const QVideoFrame & buffer )
$slot=|imageCaptured( int id, const QImage & preview )
$slot=|imageExposed( int id )
$slot=|imageMetadataAvailable( int id, const QString & key, const QVariant & value )
$slot=|imageSaved( int id, const QString & fileName )
$slot=|readyForCaptureChanged( bool ready )
$endSlotsClass
