/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOCOORDINATE
#endif

CLASS QGeoCircle INHERIT QGeoShape

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD setCenter
   METHOD center
   METHOD setRadius
   METHOD radius
   METHOD translate
   METHOD translated

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGeoCircle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoCircle>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QGeoCircle>
#endif
#endif

/*
QGeoCircle()
*/
HB_FUNC_STATIC( QGEOCIRCLE_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCircle * o = new QGeoCircle ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QGeoCircle(const QGeoCoordinate &center, qreal radius = -1.0)
*/
HB_FUNC_STATIC( QGEOCIRCLE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCircle * o = new QGeoCircle ( *PQGEOCOORDINATE(1), OPQREAL(2,-1.0) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QGeoCircle(const QGeoCircle &other)
*/
HB_FUNC_STATIC( QGEOCIRCLE_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCircle * o = new QGeoCircle ( *PQGEOCIRCLE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QGeoCircle(const QGeoShape &other)
*/
HB_FUNC_STATIC( QGEOCIRCLE_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCircle * o = new QGeoCircle ( *PQGEOSHAPE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QGeoCircle()
//[2]QGeoCircle(const QGeoCoordinate &center, qreal radius = -1.0)
//[3]QGeoCircle(const QGeoCircle &other)
//[4]QGeoCircle(const QGeoShape &other)

HB_FUNC_STATIC( QGEOCIRCLE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGEOCIRCLE_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQGEOCOORDINATE(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QGEOCIRCLE_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQGEOCIRCLE(1) )
  {
    HB_FUNC_EXEC( QGEOCIRCLE_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQGEOSHAPE(1) )
  {
    HB_FUNC_EXEC( QGEOCIRCLE_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGEOCIRCLE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCircle * obj = (QGeoCircle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void setCenter(const QGeoCoordinate &center)
*/
HB_FUNC_STATIC( QGEOCIRCLE_SETCENTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCircle * obj = (QGeoCircle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCenter ( *PQGEOCOORDINATE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QGeoCoordinate center() const
*/
HB_FUNC_STATIC( QGEOCIRCLE_CENTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCircle * obj = (QGeoCircle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoCoordinate * ptr = new QGeoCoordinate( obj->center () );
    _qt5xhb_createReturnClass ( ptr, "QGEOCOORDINATE", true );
  }
#endif
}


/*
void setRadius(qreal radius)
*/
HB_FUNC_STATIC( QGEOCIRCLE_SETRADIUS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCircle * obj = (QGeoCircle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRadius ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qreal radius() const
*/
HB_FUNC_STATIC( QGEOCIRCLE_RADIUS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCircle * obj = (QGeoCircle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->radius () );
  }
#endif
}


/*
void translate(double degreesLatitude, double degreesLongitude)
*/
HB_FUNC_STATIC( QGEOCIRCLE_TRANSLATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCircle * obj = (QGeoCircle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->translate ( PDOUBLE(1), PDOUBLE(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QGeoCircle translated(double degreesLatitude, double degreesLongitude) const
*/
HB_FUNC_STATIC( QGEOCIRCLE_TRANSLATED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCircle * obj = (QGeoCircle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoCircle * ptr = new QGeoCircle( obj->translated ( PDOUBLE(1), PDOUBLE(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QGEOCIRCLE", true );
  }
#endif
}



#pragma ENDDUMP
