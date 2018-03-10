%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIMAGEENCODERSETTINGS
REQUEST QMEDIAOBJECT
REQUEST QSIZE
#endif

CLASS QCameraImageCapture INHERIT QObject,QMediaBindableInterface

   METHOD new
   METHOD delete

   METHOD availability
   METHOD bufferFormat
   METHOD captureDestination
   METHOD encodingSettings
   METHOD error
   METHOD errorString
   METHOD imageCodecDescription
   METHOD isAvailable
   METHOD isCaptureDestinationSupported
   METHOD isReadyForCapture
   METHOD mediaObject
   METHOD setBufferFormat
   METHOD setCaptureDestination
   METHOD setEncodingSettings
   METHOD supportedBufferFormats
   METHOD supportedImageCodecs
   METHOD supportedResolutions
   METHOD cancelCapture
   METHOD capture

   METHOD onBufferFormatChanged
   METHOD onCaptureDestinationChanged
   METHOD onError
   METHOD onImageAvailable
   METHOD onImageCaptured
   METHOD onImageExposed
   METHOD onImageMetadataAvailable
   METHOD onImageSaved
   METHOD onReadyForCaptureChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCameraImageCapture(QMediaObject * mediaObject, QObject * parent = Q_NULLPTR)
$constructor=|new|QMediaObject *,QObject *=0

$prototype=~QCameraImageCapture()
$deleteMethod

%%
%% Q_PROPERTY(bool readyForCapture READ isReadyForCapture NOTIFY readyForCaptureChanged)
%%

$prototype=bool isReadyForCapture() const
$method=|bool|isReadyForCapture|

%%
%%
%%

$prototype=QMultimedia::AvailabilityStatus availability() const
$method=|QtMultimedia::AvailabilityStatus|availability|

$prototype=QVideoFrame::PixelFormat bufferFormat() const
$method=|QVideoFrame::PixelFormat|bufferFormat|

$prototype=CaptureDestinations captureDestination() const
$method=|QCameraImageCapture::CaptureDestinations|captureDestination|

$prototype=QImageEncoderSettings encodingSettings() const
$method=|QImageEncoderSettings|encodingSettings|

$prototype=Error error() const
$method=|QCameraImageCapture::Error|error|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=QString imageCodecDescription(const QString & codecName) const
$method=|QString|imageCodecDescription|const QString &

$prototype=bool isAvailable() const
$method=|bool|isAvailable|

$prototype=bool isCaptureDestinationSupported(CaptureDestinations destination) const
$method=|bool|isCaptureDestinationSupported|QCameraImageCapture::CaptureDestinations

$prototype=QMediaObject *mediaObject() const override
%% TODO: is virtual ?
$virtualMethod=|QMediaObject *|mediaObject|

$prototype=void setBufferFormat(const QVideoFrame::PixelFormat format)
%% TODO: const ?
$method=|void|setBufferFormat|QVideoFrame::PixelFormat

$prototype=void setCaptureDestination(CaptureDestinations destination)
$method=|void|setCaptureDestination|QCameraImageCapture::CaptureDestinations

$prototype=void setEncodingSettings(const QImageEncoderSettings & settings)
$method=|void|setEncodingSettings|const QImageEncoderSettings &

$prototype=QList<QVideoFrame::PixelFormat> supportedBufferFormats() const
$method=|QList<QVideoFrame::PixelFormat>|supportedBufferFormats|

$prototype=QStringList supportedImageCodecs() const
$method=|QStringList|supportedImageCodecs|

$prototype=QList<QSize> supportedResolutions(const QImageEncoderSettings & settings = QImageEncoderSettings(), bool * continuous = Q_NULLPTR) const
$method=|QList<QSize>|supportedResolutions|const QImageEncoderSettings &=QImageEncoderSettings(),bool *=0

$prototype=void cancelCapture()
$slotMethod=|void|cancelCapture|

$prototype=int capture(const QString & location = QString())
$slotMethod=|int|capture|const QString &=QString()

$prototype=bool setMediaObject(QMediaObject *) override (protected)

$beginSignals
$signalMethod=|bufferFormatChanged(QVideoFrame::PixelFormat)
$signalMethod=|captureDestinationChanged(QCameraImageCapture::CaptureDestinations)
$signalMethod=|error(int,QCameraImageCapture::Error,QString)
$signalMethod=|imageAvailable(int,QVideoFrame)
$signalMethod=|imageCaptured(int,QImage)
$signalMethod=|imageExposed(int)
$signalMethod=|imageMetadataAvailable(int,QString,QVariant)
$signalMethod=|imageSaved(int,QString)
$signalMethod=|readyForCaptureChanged(bool)
$endSignals

#pragma ENDDUMP
