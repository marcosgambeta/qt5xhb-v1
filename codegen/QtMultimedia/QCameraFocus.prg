$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QCAMERAFOCUSZONELIST
#endif

CLASS QCameraFocus INHERIT QObject

   METHOD customFocusPoint
   METHOD digitalZoom
   METHOD focusMode
   METHOD focusPointMode
   METHOD focusZones
   METHOD isAvailable
   METHOD isFocusModeSupported
   METHOD isFocusPointModeSupported
   METHOD maximumDigitalZoom
   METHOD maximumOpticalZoom
   METHOD opticalZoom
   METHOD setCustomFocusPoint
   METHOD setFocusMode
   METHOD setFocusPointMode
   METHOD zoomTo

   METHOD onDigitalZoomChanged
   METHOD onFocusZonesChanged
   METHOD onMaximumDigitalZoomChanged
   METHOD onMaximumOpticalZoomChanged
   METHOD onOpticalZoomChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPointF customFocusPoint() const
$method=|QPointF|customFocusPoint|

$prototype=qreal digitalZoom() const
$method=|qreal|digitalZoom|

$prototype=FocusModes focusMode() const
$method=|QCameraFocus::FocusModes|focusMode|

$prototype=FocusPointMode focusPointMode() const
$method=|QCameraFocus::FocusPointMode|focusPointMode|

$prototype=QCameraFocusZoneList focusZones() const
$method=|QCameraFocusZoneList|focusZones|

$prototype=bool isAvailable() const
$method=|bool|isAvailable|

$prototype=bool isFocusModeSupported(FocusModes mode) const
$method=|bool|isFocusModeSupported|QCameraFocus::FocusModes

$prototype=bool isFocusPointModeSupported(FocusPointMode mode) const
$method=|bool|isFocusPointModeSupported|QCameraFocus::FocusPointMode

$prototype=qreal maximumDigitalZoom() const
$method=|qreal|maximumDigitalZoom|

$prototype=qreal maximumOpticalZoom() const
$method=|qreal|maximumOpticalZoom|

$prototype=qreal opticalZoom() const
$method=|qreal|opticalZoom|

$prototype=void setCustomFocusPoint(const QPointF & point)
$method=|void|setCustomFocusPoint|const QPointF &

$prototype=void setFocusMode(FocusModes mode)
$method=|void|setFocusMode|QCameraFocus::FocusModes

$prototype=void setFocusPointMode(FocusPointMode mode)
$method=|void|setFocusPointMode|QCameraFocus::FocusPointMode

$prototype=void zoomTo(qreal optical, qreal digital)
$method=|void|zoomTo|qreal,qreal

#pragma ENDDUMP
