$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOPOSITIONINFOSOURCE
REQUEST QGEOSATELLITEINFOSOURCE
REQUEST QGEOAREAMONITORSOURCE
#endif

CLASS QGeoPositionInfoSourceFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD positionInfoSource
   METHOD satelliteInfoSource
   METHOD areaMonitor

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
virtual QGeoPositionInfoSource *positionInfoSource(QObject *parent) = 0
*/
$virtualMethod=5,2,0|QGeoPositionInfoSource *|positionInfoSource|QObject *

/*
virtual QGeoSatelliteInfoSource *satelliteInfoSource(QObject *parent) = 0
*/
$virtualMethod=5,2,0|QGeoSatelliteInfoSource *|satelliteInfoSource|QObject *

/*
virtual QGeoAreaMonitorSource *areaMonitor(QObject *parent) = 0
*/
$virtualMethod=5,2,0|QGeoAreaMonitorSource *|areaMonitor|QObject *

$extraMethods

#pragma ENDDUMP
