$header

#include "hbclass.ch"

CLASS QCameraCaptureDestinationControl INHERIT QMediaObject

   METHOD delete
   METHOD captureDestination
   METHOD isCaptureDestinationSupported
   METHOD setCaptureDestination

   METHOD onCaptureDestinationChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QCameraImageCapture::CaptureDestinations captureDestination() const = 0
$virtualMethod=|QCameraImageCapture::CaptureDestinations|captureDestination|

$prototype=virtual bool isCaptureDestinationSupported(QCameraImageCapture::CaptureDestinations destination) const = 0
$virtualMethod=|bool|isCaptureDestinationSupported|QCameraImageCapture::CaptureDestinations

$prototype=virtual void setCaptureDestination(QCameraImageCapture::CaptureDestinations destination) = 0
$virtualMethod=|void|setCaptureDestination|QCameraImageCapture::CaptureDestinations

#pragma ENDDUMP
