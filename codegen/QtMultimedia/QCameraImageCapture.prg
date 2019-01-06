%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject,QMediaBindableInterface

$addMethods

$addSignals

$endClass

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

$prototype=bool setMediaObject(QMediaObject *) override [protected]

$beginSignals
$signal=|bufferFormatChanged(QVideoFrame::PixelFormat)
$signal=|captureDestinationChanged(QCameraImageCapture::CaptureDestinations)
$signal=|error(int,QCameraImageCapture::Error,QString)
$signal=|imageAvailable(int,QVideoFrame)
$signal=|imageCaptured(int,QImage)
$signal=|imageExposed(int)
$signal=|imageMetadataAvailable(int,QString,QVariant)
$signal=|imageSaved(int,QString)
$signal=|readyForCaptureChanged(bool)
$endSignals

#pragma ENDDUMP
