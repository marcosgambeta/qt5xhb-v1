%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QGEOPOSITIONINFO
#endif

$beginClassFrom=QGeoPositionInfoSource

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

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

#include <QIODevice>

$prototype=QNmeaPositionInfoSource(UpdateMode updateMode, QObject *parent = 0)
$constructor=5,2,0|new|QNmeaPositionInfoSource::UpdateMode,QObject *=0

$deleteMethod=5,2,0

$prototype=UpdateMode updateMode() const
$method=5,2,0|QNmeaPositionInfoSource::UpdateMode|updateMode|

$prototype=void setDevice(QIODevice *source)
$method=5,2,0|void|setDevice|QIODevice *

$prototype=QIODevice *device() const
$method=5,2,0|QIODevice *|device|

$prototype=void setUpdateInterval(int msec)
$method=5,2,0|void|setUpdateInterval|int

$prototype=QGeoPositionInfo lastKnownPosition(bool fromSatellitePositioningMethodsOnly = false) const
$method=5,2,0|QGeoPositionInfo|lastKnownPosition|bool=false

$prototype=PositioningMethods supportedPositioningMethods() const
$method=5,2,0|QGeoPositionInfoSource::PositioningMethods|supportedPositioningMethods|

$prototype=int minimumUpdateInterval() const
$method=5,2,0|int|minimumUpdateInterval|

$prototype=Error error() const
$method=5,2,0|QGeoPositionInfoSource::Error|error|

$prototype=void startUpdates()
$method=5,2,0|void|startUpdates|

$prototype=void stopUpdates()
$method=5,2,0|void|stopUpdates|

$prototype=void requestUpdate(int timeout = 0)
$method=5,2,0|void|requestUpdate|int=0

#pragma ENDDUMP
