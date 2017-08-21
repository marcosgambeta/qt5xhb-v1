$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QGEOPOSITIONINFO
#endif

CLASS QNmeaPositionInfoSource INHERIT QGeoPositionInfoSource

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD updateMode
   METHOD setDevice
   METHOD device
   METHOD setUpdateInterval
   METHOD lastKnownPosition
   METHOD supportedPositioningMethods
   METHOD minimumUpdateInterval
   METHOD error
   METHOD startUpdates
   METHOD stopUpdates
   METHOD requestUpdate

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
QNmeaPositionInfoSource(UpdateMode updateMode, QObject *parent = 0)
*/
$constructor=5,2,0|new|QNmeaPositionInfoSource::UpdateMode,QObject *=0

$deleteMethod=5,2,0

/*
UpdateMode updateMode() const
*/
$method=5,2,0|QNmeaPositionInfoSource::UpdateMode|updateMode|

/*
void setDevice(QIODevice *source)
*/
$method=5,2,0|void|setDevice|QIODevice *

/*
QIODevice *device() const
*/
$method=5,2,0|QIODevice *|device|

/*
void setUpdateInterval(int msec)
*/
$method=5,2,0|void|setUpdateInterval|int

/*
QGeoPositionInfo lastKnownPosition(bool fromSatellitePositioningMethodsOnly = false) const
*/
$method=5,2,0|QGeoPositionInfo|lastKnownPosition|bool=false

/*
PositioningMethods supportedPositioningMethods() const
*/
$method=5,2,0|QGeoPositionInfoSource::PositioningMethods|supportedPositioningMethods|

/*
int minimumUpdateInterval() const
*/
$method=5,2,0|int|minimumUpdateInterval|

/*
Error error() const
*/
$method=5,2,0|QGeoPositionInfoSource::Error|error|

/*
void startUpdates()
*/
$method=5,2,0|void|startUpdates|

/*
void stopUpdates()
*/
$method=5,2,0|void|stopUpdates|

/*
void requestUpdate(int timeout = 0)
*/
$method=5,2,0|void|requestUpdate|int=0

#pragma ENDDUMP
