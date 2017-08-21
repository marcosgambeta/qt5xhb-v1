$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOPOSITIONINFO
#endif

CLASS QGeoPositionInfoSource INHERIT QObject

   DATA self_destruction INIT .F.

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

/*
virtual void setUpdateInterval(int msec)
*/
$virtualMethod=5,2,0|void|setUpdateInterval|int

/*
int updateInterval() const
*/
$method=5,2,0|int|updateInterval|

/*
virtual void setPreferredPositioningMethods(PositioningMethods methods)
*/
$virtualMethod=5,2,0|void|setPreferredPositioningMethods|QGeoPositionInfoSource::PositioningMethods

/*
PositioningMethods preferredPositioningMethods() const
*/
$method=5,2,0|QGeoPositionInfoSource::PositioningMethods|preferredPositioningMethods|

/*
virtual QGeoPositionInfo lastKnownPosition(bool fromSatellitePositioningMethodsOnly = false) const = 0
*/
$virtualMethod=5,2,0|QGeoPositionInfo|lastKnownPosition|bool=false

/*
virtual PositioningMethods supportedPositioningMethods() const = 0
*/
$virtualMethod=5,2,0|QGeoPositionInfoSource::PositioningMethods|supportedPositioningMethods|

/*
virtual int minimumUpdateInterval() const = 0
*/
$virtualMethod=5,2,0|int|minimumUpdateInterval|

/*
QString sourceName() const
*/
$method=5,2,0|QString|sourceName|

/*
virtual Error error() const = 0
*/
$virtualMethod=5,2,0|QGeoPositionInfoSource::Error|error|

/*
virtual void startUpdates() = 0
*/
$virtualMethod=5,2,0|void|startUpdates|

/*
virtual void stopUpdates() = 0
*/
$virtualMethod=5,2,0|void|stopUpdates|

/*
virtual void requestUpdate(int timeout = 0) = 0
*/
$virtualMethod=5,2,0|void|requestUpdate|int=0

/*
static QGeoPositionInfoSource *createDefaultSource(QObject *parent)
*/
$staticMethod=5,2,0|QGeoPositionInfoSource *|createDefaultSource|QObject *

/*
static QGeoPositionInfoSource *createSource(const QString &sourceName, QObject *parent)
*/
$staticMethod=5,2,0|QGeoPositionInfoSource *|createSource|const QString &,QObject *

/*
static QStringList availableSources()
*/
$staticMethod=5,2,0|QStringList|availableSources|

#pragma ENDDUMP
