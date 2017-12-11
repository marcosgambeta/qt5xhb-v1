$header

#include "hbclass.ch"

CLASS QCameraControl INHERIT QMediaObject

   METHOD delete
   METHOD canChangeProperty
   METHOD captureMode
   METHOD isCaptureModeSupported
   METHOD setCaptureMode
   METHOD setState
   METHOD state
   METHOD status

   METHOD onCaptureModeChanged
   METHOD onError
   METHOD onStateChanged
   METHOD onStatusChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual bool canChangeProperty(PropertyChangeType changeType, QCamera::Status status) const = 0
$method=|bool|canChangeProperty|QCameraControl::PropertyChangeType,QCamera::Status

$prototype=virtual QCamera::CaptureModes captureMode() const = 0
$method=|QCamera::CaptureModes|captureMode|

$prototype=virtual bool isCaptureModeSupported(QCamera::CaptureModes mode) const = 0
$method=|bool|isCaptureModeSupported|QCamera::CaptureModes

$prototype=virtual void setCaptureMode(QCamera::CaptureModes mode) = 0
$method=|void|setCaptureMode|QCamera::CaptureModes

$prototype=virtual void setState(QCamera::State state) = 0
$method=|void|setState|QCamera::State

$prototype=virtual QCamera::State state() const = 0
$method=|QCamera::State|state|

$prototype=virtual QCamera::Status status() const = 0
$method=|QCamera::Status|status|

#pragma ENDDUMP
