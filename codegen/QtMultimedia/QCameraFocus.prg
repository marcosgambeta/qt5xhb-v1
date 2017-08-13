$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QCAMERAFOCUSZONELIST
#endif

CLASS QCameraFocus INHERIT QObject

   DATA self_destruction INIT .F.

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

/*
QPointF customFocusPoint() const
*/
$method=|QPointF|customFocusPoint|

/*
qreal digitalZoom() const
*/
$method=|qreal|digitalZoom|

/*
FocusModes focusMode() const
*/
$method=|QCameraFocus::FocusModes|focusMode|

/*
FocusPointMode focusPointMode() const
*/
$method=|QCameraFocus::FocusPointMode|focusPointMode|

/*
QCameraFocusZoneList focusZones() const
*/
$method=|QCameraFocusZoneList|focusZones|

/*
bool isAvailable() const
*/
$method=|bool|isAvailable|

/*
bool isFocusModeSupported(FocusModes mode) const
*/
$method=|bool|isFocusModeSupported|QCameraFocus::FocusModes

/*
bool isFocusPointModeSupported(FocusPointMode mode) const
*/
$method=|bool|isFocusPointModeSupported|QCameraFocus::FocusPointMode

/*
qreal maximumDigitalZoom() const
*/
$method=|qreal|maximumDigitalZoom|

/*
qreal maximumOpticalZoom() const
*/
$method=|qreal|maximumOpticalZoom|

/*
qreal opticalZoom() const
*/
$method=|qreal|opticalZoom|

/*
void setCustomFocusPoint(const QPointF & point)
*/
$method=|void|setCustomFocusPoint|const QPointF &

/*
void setFocusMode(FocusModes mode)
*/
$method=|void|setFocusMode|QCameraFocus::FocusModes

/*
void setFocusPointMode(FocusPointMode mode)
*/
$method=|void|setFocusPointMode|QCameraFocus::FocusPointMode

/*
void zoomTo(qreal optical, qreal digital)
*/
$method=|void|zoomTo|qreal,qreal

#pragma ENDDUMP
