%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$signalMethod=|bufferFormatChanged(QVideoFrame::PixelFormat)
$signalMethod=|captureDestinationChanged(QCameraImageCapture::CaptureDestinations)
$signalMethod=|error(int,QCameraImageCapture::Error,QString)
$signalMethod=|imageAvailable(int,QVideoFrame)
$signalMethod=|imageCaptured(int,QImage)
$signalMethod=|imageExposed(int)
$signalMethod=|imageMetadataAvailable(int,QString,QVariant)
$signalMethod=|imageSaved(int,QString)
$signalMethod=|readyForCaptureChanged(bool)
