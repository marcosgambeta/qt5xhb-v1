$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOPOSITIONINFOSOURCE
REQUEST QGEOAREAMONITORINFO
#endif

CLASS QGeoAreaMonitorSource INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD setPositionInfoSource
   METHOD positionInfoSource
   METHOD sourceName
   METHOD error
   METHOD supportedAreaMonitorFeatures
   METHOD startMonitoring
   METHOD stopMonitoring
   METHOD requestUpdate
   METHOD activeMonitors1
   METHOD activeMonitors2
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

/*
virtual void setPositionInfoSource(QGeoPositionInfoSource *source)
*/
$virtualMethod=5,2,0|void|setPositionInfoSource|QGeoPositionInfoSource *

/*
virtual QGeoPositionInfoSource* positionInfoSource() const
*/
$virtualMethod=5,2,0|QGeoPositionInfoSource *|positionInfoSource|

/*
QString sourceName() const
*/
$method=5,2,0|QString|sourceName|

/*
virtual Error error() const = 0
*/
$virtualMethod=5,2,0|QGeoAreaMonitorSource::Error|error|

/*
virtual AreaMonitorFeatures supportedAreaMonitorFeatures() const = 0
*/
$virtualMethod=5,2,0|QGeoAreaMonitorSource::AreaMonitorFeatures|supportedAreaMonitorFeatures|

/*
virtual bool startMonitoring(const QGeoAreaMonitorInfo &monitor) = 0
*/
$virtualMethod=5,2,0|bool|startMonitoring|const QGeoAreaMonitorInfo &

/*
virtual bool stopMonitoring(const QGeoAreaMonitorInfo &monitor) = 0
*/
$virtualMethod=5,2,0|bool|stopMonitoring|const QGeoAreaMonitorInfo &

/*
virtual bool requestUpdate(const QGeoAreaMonitorInfo &monitor, const char *signal) = 0
*/
$virtualMethod=5,2,0|bool|requestUpdate|const QGeoAreaMonitorInfo &,const char *

/*
virtual QList<QGeoAreaMonitorInfo> activeMonitors() const = 0
*/
$virtualMethod=5,2,0|QList<QGeoAreaMonitorInfo>|activeMonitors|

/*
virtual QList<QGeoAreaMonitorInfo> activeMonitors(const QGeoShape &lookupArea) const = 0
*/
$virtualMethod=5,2,0|QList<QGeoAreaMonitorInfo>|activeMonitors|const QGeoShape &

//[1]virtual QList<QGeoAreaMonitorInfo> activeMonitors() const = 0
//[2]virtual QList<QGeoAreaMonitorInfo> activeMonitors(const QGeoShape &lookupArea) const = 0

HB_FUNC_STATIC( QGEOAREAMONITORSOURCE_ACTIVEMONITORS )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGEOAREAMONITORSOURCE_ACTIVEMONITORS1 );
  }
  else if( ISNUMPAR(1) && ISQGEOSHAPE(1) )
  {
    HB_FUNC_EXEC( QGEOAREAMONITORSOURCE_ACTIVEMONITORS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QGeoAreaMonitorSource *createDefaultSource(QObject *parent)
*/
$staticMethod=5,2,0|QGeoAreaMonitorSource *|createDefaultSource|QObject *

/*
static QGeoAreaMonitorSource *createSource(const QString& sourceName, QObject *parent)
*/
$staticMethod=5,2,0|QGeoAreaMonitorSource *|createSource|const QString &,QObject *

/*
static QStringList availableSources()
*/
$staticMethod=5,2,0|QStringList|availableSources|

#pragma ENDDUMP
