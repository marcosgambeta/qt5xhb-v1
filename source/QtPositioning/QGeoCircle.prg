/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QGEOCOORDINATE
#endif

CLASS QGeoCircle INHERIT QGeoShape

   DATA class_id INIT Class_Id_QGeoCircle
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
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
  QGeoCircle * o = new QGeoCircle (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGeoCircle *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QGeoCircle(const QGeoCoordinate &center, qreal radius = -1.0)
*/
HB_FUNC_STATIC( QGEOCIRCLE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCoordinate * par1 = (QGeoCoordinate *) _qtxhb_itemGetPtr(1);
  qreal par2 = ISNIL(2)? -1.0 : hb_parnd(2);
  QGeoCircle * o = new QGeoCircle ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGeoCircle *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QGeoCircle(const QGeoCircle &other)
*/
HB_FUNC_STATIC( QGEOCIRCLE_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCircle * par1 = (QGeoCircle *) _qtxhb_itemGetPtr(1);
  QGeoCircle * o = new QGeoCircle ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGeoCircle *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QGeoCircle(const QGeoShape &other)
*/
HB_FUNC_STATIC( QGEOCIRCLE_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoShape * par1 = (QGeoShape *) _qtxhb_itemGetPtr(1);
  QGeoCircle * o = new QGeoCircle ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGeoCircle *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
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
  else if( ISBETWEEN(1,2) && ISQGEOCOORDINATE(1) && (ISNUM(2)||ISNIL(2)) )
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
  QGeoCircle * obj = (QGeoCircle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoCoordinate * par1 = (QGeoCoordinate *) _qtxhb_itemGetPtr(1);
    obj->setCenter ( *par1 );
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
  QGeoCircle * obj = (QGeoCircle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGeoCoordinate * ptr = new QGeoCoordinate( obj->center (  ) );
    _qt4xhb_createReturnClass ( ptr, "QGEOCOORDINATE", true );
  }
#endif
}


/*
void setRadius(qreal radius)
*/
HB_FUNC_STATIC( QGEOCIRCLE_SETRADIUS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCircle * obj = (QGeoCircle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setRadius ( par1 );
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
  QGeoCircle * obj = (QGeoCircle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->radius (  ) );
  }
#endif
}


/*
void translate(double degreesLatitude, double degreesLongitude)
*/
HB_FUNC_STATIC( QGEOCIRCLE_TRANSLATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QGeoCircle * obj = (QGeoCircle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    double par1 = hb_parnd(1);
    double par2 = hb_parnd(2);
    obj->translate ( par1, par2 );
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
  QGeoCircle * obj = (QGeoCircle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    double par1 = hb_parnd(1);
    double par2 = hb_parnd(2);
    QGeoCircle * ptr = new QGeoCircle( obj->translated ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QGEOCIRCLE", true );
  }
#endif
}



#pragma ENDDUMP
