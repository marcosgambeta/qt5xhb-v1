%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOPOSITIONINFO
#endif

CLASS QGeoPositionInfoSource INHERIT QObject

   METHOD delete
   METHOD setUpdateInterval
   METHOD updateInterval
   METHOD setPreferredPositioningMethods
   METHOD preferredPositioningMethods
   METHOD lastKnownPosition
   METHOD supportedPositioningMethods
   METHOD minimumUpdateInterval
   METHOD sourceName
   METHOD error
   METHOD startUpdates
   METHOD stopUpdates
   METHOD requestUpdate
   METHOD createDefaultSource
   METHOD createSource
   METHOD availableSources

   METHOD onPositionUpdated
   METHOD onUpdateTimeout
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

#include <QStringList>

$deleteMethod=5,2,0

$prototype=virtual void setUpdateInterval(int msec)
$virtualMethod=5,2,0|void|setUpdateInterval|int

$prototype=int updateInterval() const
$method=5,2,0|int|updateInterval|

$prototype=virtual void setPreferredPositioningMethods(PositioningMethods methods)
$virtualMethod=5,2,0|void|setPreferredPositioningMethods|QGeoPositionInfoSource::PositioningMethods

$prototype=PositioningMethods preferredPositioningMethods() const
$method=5,2,0|QGeoPositionInfoSource::PositioningMethods|preferredPositioningMethods|

$prototype=virtual QGeoPositionInfo lastKnownPosition(bool fromSatellitePositioningMethodsOnly = false) const = 0
$virtualMethod=5,2,0|QGeoPositionInfo|lastKnownPosition|bool=false

$prototype=virtual PositioningMethods supportedPositioningMethods() const = 0
$virtualMethod=5,2,0|QGeoPositionInfoSource::PositioningMethods|supportedPositioningMethods|

$prototype=virtual int minimumUpdateInterval() const = 0
$virtualMethod=5,2,0|int|minimumUpdateInterval|

$prototype=QString sourceName() const
$method=5,2,0|QString|sourceName|

$prototype=virtual Error error() const = 0
$virtualMethod=5,2,0|QGeoPositionInfoSource::Error|error|

$prototype=virtual void startUpdates() = 0
$virtualMethod=5,2,0|void|startUpdates|

$prototype=virtual void stopUpdates() = 0
$virtualMethod=5,2,0|void|stopUpdates|

$prototype=virtual void requestUpdate(int timeout = 0) = 0
$virtualMethod=5,2,0|void|requestUpdate|int=0

$prototype=static QGeoPositionInfoSource *createDefaultSource(QObject *parent)
$staticMethod=5,2,0|QGeoPositionInfoSource *|createDefaultSource|QObject *

$prototype=static QGeoPositionInfoSource *createSource(const QString &sourceName, QObject *parent)
$staticMethod=5,2,0|QGeoPositionInfoSource *|createSource|const QString &,QObject *

$prototype=static QStringList availableSources()
$staticMethod=5,2,0|QStringList|availableSources|

$connectSignalFunction

$signalMethod=5,2,0|positionUpdated(QGeoPositionInfo)
$signalMethod=5,2,0|updateTimeout()
$signalMethod=5,2,0|error(QGeoPositionInfoSource::Error)

#pragma ENDDUMP
