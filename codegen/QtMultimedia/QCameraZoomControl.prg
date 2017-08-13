$header

#include "hbclass.ch"

CLASS QCameraZoomControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD currentDigitalZoom
   METHOD currentOpticalZoom
   METHOD maximumDigitalZoom
   METHOD maximumOpticalZoom
   METHOD requestedDigitalZoom
   METHOD requestedOpticalZoom
   METHOD zoomTo

   METHOD onCurrentDigitalZoomChanged
   METHOD onCurrentOpticalZoomChanged
   METHOD onMaximumDigitalZoomChanged
   METHOD onMaximumOpticalZoomChanged
   METHOD onRequestedDigitalZoomChanged
   METHOD onRequestedOpticalZoomChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual qreal currentDigitalZoom() const = 0
*/
$method=|qreal|currentDigitalZoom|

/*
virtual qreal currentOpticalZoom() const = 0
*/
$method=|qreal|currentOpticalZoom|

/*
virtual qreal maximumDigitalZoom() const = 0
*/
$method=|qreal|maximumDigitalZoom|

/*
virtual qreal maximumOpticalZoom() const = 0
*/
$method=|qreal|maximumOpticalZoom|

/*
virtual qreal requestedDigitalZoom() const = 0
*/
$method=|qreal|requestedDigitalZoom|

/*
virtual qreal requestedOpticalZoom() const = 0
*/
$method=|qreal|requestedOpticalZoom|

/*
virtual void zoomTo(qreal optical, qreal digital) = 0
*/
$method=|void|zoomTo|qreal,qreal

#pragma ENDDUMP
