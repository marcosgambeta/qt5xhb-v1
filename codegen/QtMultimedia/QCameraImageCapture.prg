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

$prototype=QCameraImageCapture(QMediaObject * mediaObject, QObject * parent = 0)
$constructor=|new|QMediaObject *,QObject *=0

$deleteMethod

$prototype=QtMultimedia::AvailabilityStatus availability() const
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

$prototype=QString imageCodecDescription(const QString & codec) const
$method=|QString|imageCodecDescription|const QString &

$prototype=bool isAvailable() const
$method=|bool|isAvailable|

$prototype=bool isCaptureDestinationSupported(CaptureDestinations destination) const
$method=|bool|isCaptureDestinationSupported|QCameraImageCapture::CaptureDestinations

$prototype=bool isReadyForCapture() const
$method=|bool|isReadyForCapture|

$prototype=virtual QMediaObject * mediaObject() const = 0
$method=|QMediaObject *|mediaObject|

$prototype=void setBufferFormat(const QVideoFrame::PixelFormat format)
$method=|void|setBufferFormat|const QVideoFrame::PixelFormat

$prototype=void setCaptureDestination(CaptureDestinations destination)
$method=|void|setCaptureDestination|QCameraImageCapture::CaptureDestinations

$prototype=void setEncodingSettings(const QImageEncoderSettings & settings)
$method=|void|setEncodingSettings|const QImageEncoderSettings &

$prototype=QList<QVideoFrame::PixelFormat> supportedBufferFormats() const
$method=|QList<QVideoFrame::PixelFormat>|supportedBufferFormats|

$prototype=QStringList supportedImageCodecs() const
$method=|QStringList|supportedImageCodecs|

$prototype=QList<QSize> supportedResolutions(const QImageEncoderSettings & settings = QImageEncoderSettings(), bool * continuous = 0) const
$method=|QList<QSize>|supportedResolutions|const QImageEncoderSettings &=QImageEncoderSettings(),bool *=0

$prototype=void cancelCapture()
$method=|void|cancelCapture|

$prototype=int capture(const QString & file = QString())
$method=|int|capture|const QString &=QString()

#pragma ENDDUMP
