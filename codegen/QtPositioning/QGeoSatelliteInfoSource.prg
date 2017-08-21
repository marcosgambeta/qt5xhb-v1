$header

#include "hbclass.ch"

CLASS QGeoSatelliteInfoSource INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD sourceName
   METHOD setUpdateInterval
   METHOD updateInterval
   METHOD minimumUpdateInterval
   METHOD error
   METHOD startUpdates
   METHOD stopUpdates
   METHOD requestUpdate
   METHOD createDefaultSource
   METHOD createSource
   METHOD availableSources

   METHOD onSatellitesInViewUpdated
   METHOD onSatellitesInUseUpdated
   METHOD onRequestTimeout
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

#include <QStringList>

$deleteMethod=5,2,0

/*
QString sourceName() const
*/
$method=5,2,0|QString|sourceName|

/*
virtual void setUpdateInterval(int msec)
*/
$virtualMethod=5,2,0|void|setUpdateInterval|int

/*
int updateInterval() const
*/
$method=5,2,0|int|updateInterval|

/*
virtual int minimumUpdateInterval() const = 0
*/
$virtualMethod=5,2,0|int|minimumUpdateInterval|

/*
virtual Error error() const = 0
*/
$virtualMethod=5,2,0|QGeoSatelliteInfoSource::Error|error|

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
static QGeoSatelliteInfoSource *createDefaultSource(QObject *parent)
*/
$staticMethod=5,2,0|QGeoSatelliteInfoSource *|createDefaultSource|QObject *

/*
static QGeoSatelliteInfoSource *createSource(const QString &sourceName, QObject *parent)
*/
$staticMethod=5,2,0|QGeoSatelliteInfoSource *|createSource|const QString &,QObject *

/*
static QStringList availableSources()
*/
$staticMethod=5,2,0|QStringList|availableSources|

#pragma ENDDUMP
