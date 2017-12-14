$header

#include "hbclass.ch"

CLASS QGeoSatelliteInfoSource INHERIT QObject

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

$prototype=QString sourceName() const
$method=5,2,0|QString|sourceName|

$prototype=virtual void setUpdateInterval(int msec)
$virtualMethod=5,2,0|void|setUpdateInterval|int

$prototype=int updateInterval() const
$method=5,2,0|int|updateInterval|

$prototype=virtual int minimumUpdateInterval() const = 0
$virtualMethod=5,2,0|int|minimumUpdateInterval|

$prototype=virtual Error error() const = 0
$virtualMethod=5,2,0|QGeoSatelliteInfoSource::Error|error|

$prototype=virtual void startUpdates() = 0
$virtualMethod=5,2,0|void|startUpdates|

$prototype=virtual void stopUpdates() = 0
$virtualMethod=5,2,0|void|stopUpdates|

$prototype=virtual void requestUpdate(int timeout = 0) = 0
$virtualMethod=5,2,0|void|requestUpdate|int=0

$prototype=static QGeoSatelliteInfoSource *createDefaultSource(QObject *parent)
$staticMethod=5,2,0|QGeoSatelliteInfoSource *|createDefaultSource|QObject *

$prototype=static QGeoSatelliteInfoSource *createSource(const QString &sourceName, QObject *parent)
$staticMethod=5,2,0|QGeoSatelliteInfoSource *|createSource|const QString &,QObject *

$prototype=static QStringList availableSources()
$staticMethod=5,2,0|QStringList|availableSources|

#pragma ENDDUMP
