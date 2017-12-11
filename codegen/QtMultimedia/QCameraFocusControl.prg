$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QCAMERAFOCUSZONELIST
#endif

CLASS QCameraFocusControl INHERIT QMediaControl

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

$prototype=virtual QPointF customFocusPoint() const = 0
$method=|QPointF|customFocusPoint|

$prototype=virtual QCameraFocus::FocusModes focusMode() const = 0
$method=|QCameraFocus::FocusModes|focusMode|

$prototype=virtual QCameraFocus::FocusPointMode focusPointMode() const = 0
$method=|QCameraFocus::FocusPointMode|focusPointMode|

$prototype=virtual QCameraFocusZoneList focusZones() const = 0
$method=|QCameraFocusZoneList|focusZones|

$prototype=virtual bool isFocusModeSupported(QCameraFocus::FocusModes mode) const = 0
$method=|bool|isFocusModeSupported|QCameraFocus::FocusModes

$prototype=virtual bool isFocusPointModeSupported(QCameraFocus::FocusPointMode mode) const = 0
$method=|bool|isFocusPointModeSupported|QCameraFocus::FocusPointMode

$prototype=virtual void setCustomFocusPoint(const QPointF & point) = 0
$method=|void|setCustomFocusPoint|const QPointF &

$prototype=virtual void setFocusMode(QCameraFocus::FocusModes mode) = 0
$method=|void|setFocusMode|QCameraFocus::FocusModes

$prototype=virtual void setFocusPointMode(QCameraFocus::FocusPointMode mode) = 0
$method=|void|setFocusPointMode|QCameraFocus::FocusPointMode

#pragma ENDDUMP
