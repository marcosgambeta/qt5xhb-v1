$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIMAGEENCODERSETTINGS
REQUEST QMEDIAOBJECT
REQUEST QSIZE
#endif

CLASS QCameraImageCapture INHERIT QObject,QMediaBindableInterface

   DATA self_destruction INIT .F.

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

/*
QCameraImageCapture(QMediaObject * mediaObject, QObject * parent = 0)
*/
$constructor=|new|QMediaObject *,QObject *=0

$deleteMethod

/*
QtMultimedia::AvailabilityStatus availability() const
*/
$method=|QtMultimedia::AvailabilityStatus|availability|

/*
QVideoFrame::PixelFormat bufferFormat() const
*/
$method=|QVideoFrame::PixelFormat|bufferFormat|

/*
CaptureDestinations captureDestination() const
*/
$method=|QCameraImageCapture::CaptureDestinations|captureDestination|

/*
QImageEncoderSettings encodingSettings() const
*/
$method=|QImageEncoderSettings|encodingSettings|

/*
Error error() const
*/
$method=|QCameraImageCapture::Error|error|

/*
QString errorString() const
*/
$method=|QString|errorString|

/*
QString imageCodecDescription(const QString & codec) const
*/
$method=|QString|imageCodecDescription|const QString &

/*
bool isAvailable() const
*/
$method=|bool|isAvailable|

/*
bool isCaptureDestinationSupported(CaptureDestinations destination) const
*/
$method=|bool|isCaptureDestinationSupported|QCameraImageCapture::CaptureDestinations

/*
bool isReadyForCapture() const
*/
$method=|bool|isReadyForCapture|

/*
virtual QMediaObject * mediaObject() const = 0
*/
$method=|QMediaObject *|mediaObject|

/*
void setBufferFormat(const QVideoFrame::PixelFormat format)
*/
$method=|void|setBufferFormat|const QVideoFrame::PixelFormat

/*
void setCaptureDestination(CaptureDestinations destination)
*/
$method=|void|setCaptureDestination|QCameraImageCapture::CaptureDestinations

/*
void setEncodingSettings(const QImageEncoderSettings & settings)
*/
$method=|void|setEncodingSettings|const QImageEncoderSettings &

/*
QList<QVideoFrame::PixelFormat> supportedBufferFormats() const
*/
$method=|QList<QVideoFrame::PixelFormat>|supportedBufferFormats|

/*
QStringList supportedImageCodecs() const
*/
$method=|QStringList|supportedImageCodecs|

/*
QList<QSize> supportedResolutions(const QImageEncoderSettings & settings = QImageEncoderSettings(), bool * continuous = 0) const
*/
$method=|QList<QSize>|supportedResolutions|const QImageEncoderSettings &=QImageEncoderSettings(),bool *=0

/*
void cancelCapture()
*/
$method=|void|cancelCapture|

/*
int capture(const QString & file = QString())
*/
$method=|int|capture|const QString &=QString()

#pragma ENDDUMP
