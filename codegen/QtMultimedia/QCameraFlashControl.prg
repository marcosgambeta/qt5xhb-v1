$header

#include "hbclass.ch"

CLASS QCameraFlashControl INHERIT QMediaControl

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

$prototype=virtual QCameraExposure::FlashModes flashMode() const = 0
$virtualMethod=|QCameraExposure::FlashModes|flashMode|

$prototype=virtual bool isFlashModeSupported(QCameraExposure::FlashModes mode) const = 0
$virtualMethod=|bool|isFlashModeSupported|QCameraExposure::FlashModes

$prototype=virtual bool isFlashReady() const = 0
$virtualMethod=|bool|isFlashReady|

$prototype=virtual void setFlashMode(QCameraExposure::FlashModes mode) = 0
$virtualMethod=|void|setFlashMode|QCameraExposure::FlashModes

#pragma ENDDUMP
