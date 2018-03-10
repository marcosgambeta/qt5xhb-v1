%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOPOSITIONINFOSOURCE
REQUEST QGEOAREAMONITORINFO
#endif

CLASS QGeoAreaMonitorSource INHERIT QObject

   METHOD delete
   METHOD setPositionInfoSource
   METHOD positionInfoSource
   METHOD sourceName
   METHOD error
   METHOD supportedAreaMonitorFeatures
   METHOD startMonitoring
   METHOD stopMonitoring
   METHOD requestUpdate
   METHOD activeMonitors
   METHOD createDefaultSource
   METHOD createSource
   METHOD availableSources

   METHOD onAreaEntered
   METHOD onAreaExited
   METHOD onMonitorExpired
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$deleteMethod=5,2,0

$prototype=virtual void setPositionInfoSource(QGeoPositionInfoSource *source)
$virtualMethod=5,2,0|void|setPositionInfoSource|QGeoPositionInfoSource *

$prototype=virtual QGeoPositionInfoSource* positionInfoSource() const
$virtualMethod=5,2,0|QGeoPositionInfoSource *|positionInfoSource|

$prototype=QString sourceName() const
$method=5,2,0|QString|sourceName|

$prototype=virtual Error error() const = 0
$virtualMethod=5,2,0|QGeoAreaMonitorSource::Error|error|

$prototype=virtual AreaMonitorFeatures supportedAreaMonitorFeatures() const = 0
$virtualMethod=5,2,0|QGeoAreaMonitorSource::AreaMonitorFeatures|supportedAreaMonitorFeatures|

$prototype=virtual bool startMonitoring(const QGeoAreaMonitorInfo &monitor) = 0
$virtualMethod=5,2,0|bool|startMonitoring|const QGeoAreaMonitorInfo &

$prototype=virtual bool stopMonitoring(const QGeoAreaMonitorInfo &monitor) = 0
$virtualMethod=5,2,0|bool|stopMonitoring|const QGeoAreaMonitorInfo &

$prototype=virtual bool requestUpdate(const QGeoAreaMonitorInfo &monitor, const char *signal) = 0
$virtualMethod=5,2,0|bool|requestUpdate|const QGeoAreaMonitorInfo &,const char *

$prototype=virtual QList<QGeoAreaMonitorInfo> activeMonitors() const = 0
$internalVirtualMethod=5,2,0|QList<QGeoAreaMonitorInfo>|activeMonitors,activeMonitors1|

$prototype=virtual QList<QGeoAreaMonitorInfo> activeMonitors(const QGeoShape &lookupArea) const = 0
$internalVirtualMethod=5,2,0|QList<QGeoAreaMonitorInfo>|activeMonitors,activeMonitors2|const QGeoShape &

//[1]virtual QList<QGeoAreaMonitorInfo> activeMonitors() const = 0
//[2]virtual QList<QGeoAreaMonitorInfo> activeMonitors(const QGeoShape &lookupArea) const = 0

HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_ACTIVEMONITORS )
{
  if( ISNUMPAR(0) )
  {
    QGeoAreaMonitorSource_activeMonitors1();
  }
  else if( ISNUMPAR(1) && ISQGEOSHAPE(1) )
  {
    QGeoAreaMonitorSource_activeMonitors2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=static QGeoAreaMonitorSource *createDefaultSource(QObject *parent)
$staticMethod=5,2,0|QGeoAreaMonitorSource *|createDefaultSource|QObject *

$prototype=static QGeoAreaMonitorSource *createSource(const QString& sourceName, QObject *parent)
$staticMethod=5,2,0|QGeoAreaMonitorSource *|createSource|const QString &,QObject *

$prototype=static QStringList availableSources()
$staticMethod=5,2,0|QStringList|availableSources|

$beginSignals
$signalMethod=5,2,0|areaEntered(QGeoAreaMonitorInfo,QGeoPositionInfo)
$signalMethod=5,2,0|areaExited(QGeoAreaMonitorInfo,QGeoPositionInfo)
$signalMethod=5,2,0|monitorExpired(QGeoAreaMonitorInfo)
$signalMethod=5,2,0|error(QGeoAreaMonitorSource::Error)
$endSignals

#pragma ENDDUMP
