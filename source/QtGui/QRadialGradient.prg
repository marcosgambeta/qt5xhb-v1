/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QRadialGradient INHERIT QGradient

   DATA class_id INIT Class_Id_QRadialGradient
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new
   METHOD delete
   METHOD center
   METHOD centerRadius
   METHOD focalPoint
   METHOD focalRadius
   METHOD radius
   METHOD setCenter1
   METHOD setCenter2
   METHOD setCenter
   METHOD setCenterRadius
   METHOD setFocalPoint1
   METHOD setFocalPoint2
   METHOD setFocalPoint
   METHOD setFocalRadius
   METHOD setRadius
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRadialGradient
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QRadialGradient>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QRadialGradient>
#endif

/*
QRadialGradient()
*/
HB_FUNC_STATIC( QRADIALGRADIENT_NEW1 )
{
  QRadialGradient * o = new QRadialGradient (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRadialGradient *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QRadialGradient(const QPointF & center, qreal radius, const QPointF & focalPoint)
*/
HB_FUNC_STATIC( QRADIALGRADIENT_NEW2 )
{
  QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
  qreal par2 = hb_parnd(2);
  QPointF * par3 = (QPointF *) _qt5xhb_itemGetPtr(3);
  QRadialGradient * o = new QRadialGradient ( *par1, par2, *par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRadialGradient *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QRadialGradient(qreal cx, qreal cy, qreal radius, qreal fx, qreal fy)
*/
HB_FUNC_STATIC( QRADIALGRADIENT_NEW3 )
{
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  qreal par3 = hb_parnd(3);
  qreal par4 = hb_parnd(4);
  qreal par5 = hb_parnd(5);
  QRadialGradient * o = new QRadialGradient ( par1, par2, par3, par4, par5 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRadialGradient *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QRadialGradient(const QPointF & center, qreal radius)
*/
HB_FUNC_STATIC( QRADIALGRADIENT_NEW4 )
{
  QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
  qreal par2 = hb_parnd(2);
  QRadialGradient * o = new QRadialGradient ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRadialGradient *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QRadialGradient(qreal cx, qreal cy, qreal radius)
*/
HB_FUNC_STATIC( QRADIALGRADIENT_NEW5 )
{
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  qreal par3 = hb_parnd(3);
  QRadialGradient * o = new QRadialGradient ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRadialGradient *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QRadialGradient(const QPointF & center, qreal centerRadius, const QPointF & focalPoint, qreal focalRadius)
*/
HB_FUNC_STATIC( QRADIALGRADIENT_NEW6 )
{
  QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
  qreal par2 = hb_parnd(2);
  QPointF * par3 = (QPointF *) _qt5xhb_itemGetPtr(3);
  qreal par4 = hb_parnd(4);
  QRadialGradient * o = new QRadialGradient ( *par1, par2, *par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRadialGradient *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QRadialGradient(qreal cx, qreal cy, qreal centerRadius, qreal fx, qreal fy, qreal focalRadius)
*/
HB_FUNC_STATIC( QRADIALGRADIENT_NEW7 )
{
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  qreal par3 = hb_parnd(3);
  qreal par4 = hb_parnd(4);
  qreal par5 = hb_parnd(5);
  qreal par6 = hb_parnd(6);
  QRadialGradient * o = new QRadialGradient ( par1, par2, par3, par4, par5, par6 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QRadialGradient *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QRadialGradient()
//[2]QRadialGradient(const QPointF & center, qreal radius, const QPointF & focalPoint)
//[3]QRadialGradient(qreal cx, qreal cy, qreal radius, qreal fx, qreal fy)
//[4]QRadialGradient(const QPointF & center, qreal radius)
//[5]QRadialGradient(qreal cx, qreal cy, qreal radius)
//[6]QRadialGradient(const QPointF & center, qreal centerRadius, const QPointF & focalPoint, qreal focalRadius)
//[7]QRadialGradient(qreal cx, qreal cy, qreal centerRadius, qreal fx, qreal fy, qreal focalRadius)

HB_FUNC_STATIC( QRADIALGRADIENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QRADIALGRADIENT_NEW1 );
  }
  else if( ISNUMPAR(3) && ISQPOINTF(1) && ISNUM(2) && ISQPOINTF(3) )
  {
    HB_FUNC_EXEC( QRADIALGRADIENT_NEW2 );
  }
  else if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    HB_FUNC_EXEC( QRADIALGRADIENT_NEW3 );
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QRADIALGRADIENT_NEW4 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QRADIALGRADIENT_NEW5 );
  }
  else if( ISNUMPAR(4) && ISQPOINTF(1) && ISNUM(2) && ISQPOINTF(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QRADIALGRADIENT_NEW6 );
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    HB_FUNC_EXEC( QRADIALGRADIENT_NEW7 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QRADIALGRADIENT_DELETE )
{
  QRadialGradient * obj = (QRadialGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
}

/*
QPointF center() const
*/
HB_FUNC_STATIC( QRADIALGRADIENT_CENTER )
{
  QRadialGradient * obj = (QRadialGradient *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->center (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
qreal centerRadius() const
*/
HB_FUNC_STATIC( QRADIALGRADIENT_CENTERRADIUS )
{
  QRadialGradient * obj = (QRadialGradient *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->centerRadius (  ) );
  }
}


/*
QPointF focalPoint() const
*/
HB_FUNC_STATIC( QRADIALGRADIENT_FOCALPOINT )
{
  QRadialGradient * obj = (QRadialGradient *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->focalPoint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
qreal focalRadius() const
*/
HB_FUNC_STATIC( QRADIALGRADIENT_FOCALRADIUS )
{
  QRadialGradient * obj = (QRadialGradient *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->focalRadius (  ) );
  }
}


/*
qreal radius() const
*/
HB_FUNC_STATIC( QRADIALGRADIENT_RADIUS )
{
  QRadialGradient * obj = (QRadialGradient *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->radius (  ) );
  }
}


/*
void setCenter(const QPointF & center)
*/
HB_FUNC_STATIC( QRADIALGRADIENT_SETCENTER1 )
{
  QRadialGradient * obj = (QRadialGradient *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->setCenter ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCenter(qreal x, qreal y)
*/
HB_FUNC_STATIC( QRADIALGRADIENT_SETCENTER2 )
{
  QRadialGradient * obj = (QRadialGradient *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->setCenter ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setCenter(const QPointF & center)
//[2]void setCenter(qreal x, qreal y)

HB_FUNC_STATIC( QRADIALGRADIENT_SETCENTER )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QRADIALGRADIENT_SETCENTER1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QRADIALGRADIENT_SETCENTER2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setCenterRadius(qreal radius)
*/
HB_FUNC_STATIC( QRADIALGRADIENT_SETCENTERRADIUS )
{
  QRadialGradient * obj = (QRadialGradient *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setCenterRadius ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFocalPoint(const QPointF & focalPoint)
*/
HB_FUNC_STATIC( QRADIALGRADIENT_SETFOCALPOINT1 )
{
  QRadialGradient * obj = (QRadialGradient *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
    obj->setFocalPoint ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFocalPoint(qreal x, qreal y)
*/
HB_FUNC_STATIC( QRADIALGRADIENT_SETFOCALPOINT2 )
{
  QRadialGradient * obj = (QRadialGradient *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->setFocalPoint ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setFocalPoint(const QPointF & focalPoint)
//[2]void setFocalPoint(qreal x, qreal y)

HB_FUNC_STATIC( QRADIALGRADIENT_SETFOCALPOINT )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QRADIALGRADIENT_SETFOCALPOINT1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QRADIALGRADIENT_SETFOCALPOINT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setFocalRadius(qreal radius)
*/
HB_FUNC_STATIC( QRADIALGRADIENT_SETFOCALRADIUS )
{
  QRadialGradient * obj = (QRadialGradient *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setFocalRadius ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRadius(qreal radius)
*/
HB_FUNC_STATIC( QRADIALGRADIENT_SETRADIUS )
{
  QRadialGradient * obj = (QRadialGradient *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setRadius ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
