$header

#include "hbclass.ch"

CLASS QCameraCaptureDestinationControl INHERIT QMediaObject

   DATA self_destruction INIT .F.

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

/*
virtual QCameraImageCapture::CaptureDestinations captureDestination() const = 0
*/
$method=|QCameraImageCapture::CaptureDestinations|captureDestination|

/*
virtual bool isCaptureDestinationSupported(QCameraImageCapture::CaptureDestinations destination) const = 0
*/
$method=|bool|isCaptureDestinationSupported|QCameraImageCapture::CaptureDestinations

/*
virtual void setCaptureDestination(QCameraImageCapture::CaptureDestinations destination) = 0
*/
$method=|void|setCaptureDestination|QCameraImageCapture::CaptureDestinations

#pragma ENDDUMP
