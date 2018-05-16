%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOPOSITIONINFOSOURCE
REQUEST QGEOSATELLITEINFOSOURCE
REQUEST QGEOAREAMONITORSOURCE
#endif

$beginClass

   METHOD positionInfoSource
   METHOD satelliteInfoSource
   METHOD areaMonitor

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=virtual QGeoPositionInfoSource *positionInfoSource(QObject *parent) = 0
$virtualMethod=5,2,0|QGeoPositionInfoSource *|positionInfoSource|QObject *

$prototype=virtual QGeoSatelliteInfoSource *satelliteInfoSource(QObject *parent) = 0
$virtualMethod=5,2,0|QGeoSatelliteInfoSource *|satelliteInfoSource|QObject *

$prototype=virtual QGeoAreaMonitorSource *areaMonitor(QObject *parent) = 0
$virtualMethod=5,2,0|QGeoAreaMonitorSource *|areaMonitor|QObject *

$extraMethods

#pragma ENDDUMP
