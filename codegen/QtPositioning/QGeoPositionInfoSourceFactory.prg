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
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCEFACTORY_POSITIONINFOSOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSourceFactory * obj = (QGeoPositionInfoSourceFactory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoPositionInfoSource * ptr = obj->positionInfoSource ( PQOBJECT(1) );
    _qt5xhb_createReturnClass ( ptr, "QGEOPOSITIONINFOSOURCE" );
  }
#endif
}


/*
virtual QGeoSatelliteInfoSource *satelliteInfoSource(QObject *parent) = 0
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCEFACTORY_SATELLITEINFOSOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSourceFactory * obj = (QGeoPositionInfoSourceFactory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoSatelliteInfoSource * ptr = obj->satelliteInfoSource ( PQOBJECT(1) );
    _qt5xhb_createReturnClass ( ptr, "QGEOSATELLITEINFOSOURCE" );
  }
#endif
}


/*
virtual QGeoAreaMonitorSource *areaMonitor(QObject *parent) = 0
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCEFACTORY_AREAMONITOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSourceFactory * obj = (QGeoPositionInfoSourceFactory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoAreaMonitorSource * ptr = obj->areaMonitor ( PQOBJECT(1) );
    _qt5xhb_createReturnClass ( ptr, "QGEOAREAMONITORSOURCE" );
  }
#endif
}



$extraMethods

#pragma ENDDUMP
