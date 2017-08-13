$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QCAMERAFOCUSZONELIST
#endif

CLASS QCameraFocusControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD customFocusPoint
   METHOD focusMode
   METHOD focusPointMode
   METHOD focusZones
   METHOD isFocusModeSupported
   METHOD isFocusPointModeSupported
   METHOD setCustomFocusPoint
   METHOD setFocusMode
   METHOD setFocusPointMode

   METHOD onCustomFocusPointChanged
   METHOD onFocusModeChanged
   METHOD onFocusPointModeChanged
   METHOD onFocusZonesChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QPointF customFocusPoint() const = 0
*/
$method=|QPointF|customFocusPoint|

/*
virtual QCameraFocus::FocusModes focusMode() const = 0
*/
$method=|QCameraFocus::FocusModes|focusMode|

/*
virtual QCameraFocus::FocusPointMode focusPointMode() const = 0
*/
$method=|QCameraFocus::FocusPointMode|focusPointMode|

/*
virtual QCameraFocusZoneList focusZones() const = 0
*/
$method=|QCameraFocusZoneList|focusZones|

/*
virtual bool isFocusModeSupported(QCameraFocus::FocusModes mode) const = 0
*/
$method=|bool|isFocusModeSupported|QCameraFocus::FocusModes

/*
virtual bool isFocusPointModeSupported(QCameraFocus::FocusPointMode mode) const = 0
*/
$method=|bool|isFocusPointModeSupported|QCameraFocus::FocusPointMode

/*
virtual void setCustomFocusPoint(const QPointF & point) = 0
*/
$method=|void|setCustomFocusPoint|const QPointF &

/*
virtual void setFocusMode(QCameraFocus::FocusModes mode) = 0
*/
$method=|void|setFocusMode|QCameraFocus::FocusModes

/*
virtual void setFocusPointMode(QCameraFocus::FocusPointMode mode) = 0
*/
$method=|void|setFocusPointMode|QCameraFocus::FocusPointMode

#pragma ENDDUMP
