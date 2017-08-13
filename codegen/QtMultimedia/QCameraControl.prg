$header

#include "hbclass.ch"

CLASS QCameraControl INHERIT QMediaObject

   DATA self_destruction INIT .F.

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

/*
virtual bool canChangeProperty(PropertyChangeType changeType, QCamera::Status status) const = 0
*/
$method=|bool|canChangeProperty|QCameraControl::PropertyChangeType,QCamera::Status

/*
virtual QCamera::CaptureModes captureMode() const = 0
*/
$method=|QCamera::CaptureModes|captureMode|

/*
virtual bool isCaptureModeSupported(QCamera::CaptureModes mode) const = 0
*/
$method=|bool|isCaptureModeSupported|QCamera::CaptureModes

/*
virtual void setCaptureMode(QCamera::CaptureModes mode) = 0
*/
$method=|void|setCaptureMode|QCamera::CaptureModes

/*
virtual void setState(QCamera::State state) = 0
*/
$method=|void|setState|QCamera::State

/*
virtual QCamera::State state() const = 0
*/
$method=|QCamera::State|state|

/*
virtual QCamera::Status status() const = 0
*/
$method=|QCamera::Status|status|

#pragma ENDDUMP
