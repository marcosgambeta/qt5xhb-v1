%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

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

$addSignals

$endClass

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

$beginSignals
$signal=5,2,0|satellitesInViewUpdated(QList<QGeoSatelliteInfo>)
$signal=5,2,0|satellitesInUseUpdated(QList<QGeoSatelliteInfo>)
$signal=5,2,0|requestTimeout()
$signal=5,2,0|error(QGeoSatelliteInfoSource::Error)
$endSignals

#pragma ENDDUMP
