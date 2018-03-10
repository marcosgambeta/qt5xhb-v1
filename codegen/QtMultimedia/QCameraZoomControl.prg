%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QCameraZoomControl INHERIT QMediaControl

%%   METHOD new
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

$prototype=explicit QCameraZoomControl(QObject *parent = Q_NULLPTR) (protected)

$prototype=~QCameraZoomControl()
$deleteMethod

$prototype=virtual qreal currentDigitalZoom() const = 0
$virtualMethod=|qreal|currentDigitalZoom|

$prototype=virtual qreal currentOpticalZoom() const = 0
$virtualMethod=|qreal|currentOpticalZoom|

$prototype=virtual qreal maximumDigitalZoom() const = 0
$virtualMethod=|qreal|maximumDigitalZoom|

$prototype=virtual qreal maximumOpticalZoom() const = 0
$virtualMethod=|qreal|maximumOpticalZoom|

$prototype=virtual qreal requestedDigitalZoom() const = 0
$virtualMethod=|qreal|requestedDigitalZoom|

$prototype=virtual qreal requestedOpticalZoom() const = 0
$virtualMethod=|qreal|requestedOpticalZoom|

$prototype=virtual void zoomTo(qreal optical, qreal digital) = 0
$virtualMethod=|void|zoomTo|qreal,qreal

$beginSignals
$signalMethod=|currentDigitalZoomChanged(qreal)
$signalMethod=|currentOpticalZoomChanged(qreal)
$signalMethod=|maximumDigitalZoomChanged(qreal)
$signalMethod=|maximumOpticalZoomChanged(qreal)
$signalMethod=|requestedDigitalZoomChanged(qreal)
$signalMethod=|requestedOpticalZoomChanged(qreal)
$endSignals

#pragma ENDDUMP
