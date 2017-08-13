$header

#include "hbclass.ch"

CLASS QCameraFlashControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD flashMode
   METHOD isFlashModeSupported
   METHOD isFlashReady
   METHOD setFlashMode

   METHOD onFlashReady

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QCameraExposure::FlashModes flashMode() const = 0
*/
$method=|QCameraExposure::FlashModes|flashMode|

/*
virtual bool isFlashModeSupported(QCameraExposure::FlashModes mode) const = 0
*/
$method=|bool|isFlashModeSupported|QCameraExposure::FlashModes

/*
virtual bool isFlashReady() const = 0
*/
$method=|bool|isFlashReady|

/*
virtual void setFlashMode(QCameraExposure::FlashModes mode) = 0
*/
$method=|void|setFlashMode|QCameraExposure::FlashModes

#pragma ENDDUMP
