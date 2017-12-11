$header

#include "hbclass.ch"

CLASS QCameraZoomControl INHERIT QMediaControl

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

$prototype=virtual qreal currentDigitalZoom() const = 0
$method=|qreal|currentDigitalZoom|

$prototype=virtual qreal currentOpticalZoom() const = 0
$method=|qreal|currentOpticalZoom|

$prototype=virtual qreal maximumDigitalZoom() const = 0
$method=|qreal|maximumDigitalZoom|

$prototype=virtual qreal maximumOpticalZoom() const = 0
$method=|qreal|maximumOpticalZoom|

$prototype=virtual qreal requestedDigitalZoom() const = 0
$method=|qreal|requestedDigitalZoom|

$prototype=virtual qreal requestedOpticalZoom() const = 0
$method=|qreal|requestedOpticalZoom|

$prototype=virtual void zoomTo(qreal optical, qreal digital) = 0
$method=|void|zoomTo|qreal,qreal

#pragma ENDDUMP
