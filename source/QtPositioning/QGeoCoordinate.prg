/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
//#include "qt5xhb_clsid.ch"

CLASS QGeoCoordinate

   DATA pointer
   //DATA class_id INIT Class_Id_QGeoCoordinate
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD isValid
   METHOD type
   METHOD setLatitude
   METHOD latitude
   METHOD setLongitude
   METHOD longitude
   METHOD setAltitude
   METHOD altitude
   METHOD distanceTo
   METHOD azimuthTo
   METHOD atDistanceAndAzimuth
   METHOD toString

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGeoCoordinate
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoCoordinate>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoCoordinate>
#endif
#endif

/*
QGeoCoordinate()
*/
HB_FUNC_STATIC( QGEOCOORDINATE_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * o = new QGeoCoordinate (  );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QGeoCoordinate(double latitude, double longitude)
*/
HB_FUNC_STATIC( QGEOCOORDINATE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  double par1 = hb_parnd(1);
  double par2 = hb_parnd(2);
  QGeoCoordinate * o = new QGeoCoordinate ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QGeoCoordinate(double latitude, double longitude, double altitude)
*/
HB_FUNC_STATIC( QGEOCOORDINATE_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  double par1 = hb_parnd(1);
  double par2 = hb_parnd(2);
  double par3 = hb_parnd(3);
  QGeoCoordinate * o = new QGeoCoordinate ( par1, par2, par3 );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QGeoCoordinate(const QGeoCoordinate &other)
*/
HB_FUNC_STATIC( QGEOCOORDINATE_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * par1 = (QGeoCoordinate *) _qt5xhb_itemGetPtr(1);
  QGeoCoordinate * o = new QGeoCoordinate ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QGeoCoordinate()
//[2]QGeoCoordinate(double latitude, double longitude)
//[3]QGeoCoordinate(double latitude, double longitude, double altitude)
//[4]QGeoCoordinate(const QGeoCoordinate &other)

HB_FUNC_STATIC( QGEOCOORDINATE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGEOCOORDINATE_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGEOCOORDINATE_NEW2 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QGEOCOORDINATE_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQGEOCOORDINATE(1) )
  {
    HB_FUNC_EXEC( QGEOCOORDINATE_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGEOCOORDINATE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * obj = (QGeoCoordinate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QGEOCOORDINATE_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * obj = (QGeoCoordinate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
#endif
}


/*
CoordinateType type() const
*/
HB_FUNC_STATIC( QGEOCOORDINATE_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * obj = (QGeoCoordinate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type (  ) );
  }
#endif
}


/*
void setLatitude(double latitude)
*/
HB_FUNC_STATIC( QGEOCOORDINATE_SETLATITUDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * obj = (QGeoCoordinate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    double par1 = hb_parnd(1);
    obj->setLatitude ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
double latitude() const
*/
HB_FUNC_STATIC( QGEOCOORDINATE_LATITUDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * obj = (QGeoCoordinate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->latitude (  ) );
  }
#endif
}


/*
void setLongitude(double longitude)
*/
HB_FUNC_STATIC( QGEOCOORDINATE_SETLONGITUDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * obj = (QGeoCoordinate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    double par1 = hb_parnd(1);
    obj->setLongitude ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
double longitude() const
*/
HB_FUNC_STATIC( QGEOCOORDINATE_LONGITUDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * obj = (QGeoCoordinate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->longitude (  ) );
  }
#endif
}


/*
void setAltitude(double altitude)
*/
HB_FUNC_STATIC( QGEOCOORDINATE_SETALTITUDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * obj = (QGeoCoordinate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    double par1 = hb_parnd(1);
    obj->setAltitude ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
double altitude() const
*/
HB_FUNC_STATIC( QGEOCOORDINATE_ALTITUDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * obj = (QGeoCoordinate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->altitude (  ) );
  }
#endif
}


/*
qreal distanceTo(const QGeoCoordinate &other) const
*/
HB_FUNC_STATIC( QGEOCOORDINATE_DISTANCETO )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * obj = (QGeoCoordinate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoCoordinate * par1 = (QGeoCoordinate *) _qt5xhb_itemGetPtr(1);
    hb_retnd( obj->distanceTo ( *par1 ) );
  }
#endif
}


/*
qreal azimuthTo(const QGeoCoordinate &other) const
*/
HB_FUNC_STATIC( QGEOCOORDINATE_AZIMUTHTO )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * obj = (QGeoCoordinate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoCoordinate * par1 = (QGeoCoordinate *) _qt5xhb_itemGetPtr(1);
    hb_retnd( obj->azimuthTo ( *par1 ) );
  }
#endif
}


/*
QGeoCoordinate atDistanceAndAzimuth(qreal distance, qreal azimuth, qreal distanceUp = 0.0) const
*/
HB_FUNC_STATIC( QGEOCOORDINATE_ATDISTANCEANDAZIMUTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * obj = (QGeoCoordinate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoCoordinate * ptr = new QGeoCoordinate( obj->atDistanceAndAzimuth ( PQREAL(1), PQREAL(2), (qreal) ISNIL(3)? 0.0 : hb_parnd(3) ) );
    _qt5xhb_createReturnClass ( ptr, "QGEOCOORDINATE", true );
  }
#endif
}


/*
QString toString(CoordinateFormat format = DegreesMinutesSecondsWithHemisphere) const
*/
HB_FUNC_STATIC( QGEOCOORDINATE_TOSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * obj = (QGeoCoordinate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QGeoCoordinate::DegreesMinutesSecondsWithHemisphere : hb_parni(1);
    hb_retc( (const char *) obj->toString (  (QGeoCoordinate::CoordinateFormat) par1 ).toLatin1().data() );
  }
#endif
}



HB_FUNC_STATIC( QGEOCOORDINATE_NEWFROM )
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

HB_FUNC_STATIC( QGEOCOORDINATE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGEOCOORDINATE_NEWFROM );
}

HB_FUNC_STATIC( QGEOCOORDINATE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGEOCOORDINATE_NEWFROM );
}

HB_FUNC_STATIC( QGEOCOORDINATE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGEOCOORDINATE_SETSELFDESTRUCTION )
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