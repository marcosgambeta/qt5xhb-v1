/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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

PROCEDURE destroyObject () CLASS QGeoPositionInfoSourceFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoPositionInfoSourceFactory>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoPositionInfoSourceFactory>
#endif
#endif



/*
virtual QGeoPositionInfoSource *positionInfoSource(QObject *parent) = 0
*/
HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCEFACTORY_POSITIONINFOSOURCE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoPositionInfoSourceFactory * obj = (QGeoPositionInfoSourceFactory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
    QGeoPositionInfoSource * ptr = obj->positionInfoSource ( par1 );
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
    QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
    QGeoSatelliteInfoSource * ptr = obj->satelliteInfoSource ( par1 );
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
    QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
    QGeoAreaMonitorSource * ptr = obj->areaMonitor ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QGEOAREAMONITORSOURCE" );
  }
#endif
}



HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCEFACTORY_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCEFACTORY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGEOPOSITIONINFOSOURCEFACTORY_NEWFROM );
}

HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCEFACTORY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGEOPOSITIONINFOSOURCEFACTORY_NEWFROM );
}

HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCEFACTORY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGEOPOSITIONINFOSOURCEFACTORY_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
