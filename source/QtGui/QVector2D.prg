/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QVECTOR3D
REQUEST QVECTOR4D
REQUEST QPOINT
REQUEST QPOINTF
#endif

CLASS QVector2D

   DATA pointer
   DATA class_id INIT Class_Id_QVector2D
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new
   METHOD delete
   METHOD isNull
   METHOD x
   METHOD y
   METHOD setX
   METHOD setY
   METHOD length
   METHOD lengthSquared
   METHOD normalized
   METHOD normalize
   METHOD distanceToPoint
   METHOD distanceToLine
   METHOD toVector3D
   METHOD toVector4D
   METHOD toPoint
   METHOD toPointF
   METHOD dotProduct
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVector2D
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QVector2D>
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
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QVector2D>
#endif
#endif

#include <QVector3D>
#include <QVector4D>

/*
QVector2D()
*/
HB_FUNC_STATIC( QVECTOR2D_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QVector2D * o = new QVector2D (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVector2D *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QVector2D(float xpos, float ypos)
*/
HB_FUNC_STATIC( QVECTOR2D_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  float par1 = hb_parnd(1);
  float par2 = hb_parnd(2);
  QVector2D * o = new QVector2D ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVector2D *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QVector2D(const QPoint& point)
*/
HB_FUNC_STATIC( QVECTOR2D_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
  QVector2D * o = new QVector2D ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVector2D *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QVector2D(const QPointF& point)
*/
HB_FUNC_STATIC( QVECTOR2D_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
  QVector2D * o = new QVector2D ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVector2D *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QVector2D(const QVector3D& vector)
*/
HB_FUNC_STATIC( QVECTOR2D_NEW5 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QVector3D * par1 = (QVector3D *) _qtxhb_itemGetPtr(1);
  QVector2D * o = new QVector2D ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVector2D *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QVector2D(const QVector4D& vector)
*/
HB_FUNC_STATIC( QVECTOR2D_NEW6 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QVector4D * par1 = (QVector4D *) _qtxhb_itemGetPtr(1);
  QVector2D * o = new QVector2D ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVector2D *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QVector2D()
//[2]QVector2D(float xpos, float ypos)
//[3]QVector2D(const QPoint& point)
//[4]QVector2D(const QPointF& point)
//[5]QVector2D(const QVector3D& vector)
//[6]QVector2D(const QVector4D& vector)

HB_FUNC_STATIC( QVECTOR2D_NEW )
{
  // TODO: implementar
}

HB_FUNC_STATIC( QVECTOR2D_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isNull() const
*/
HB_FUNC_STATIC( QVECTOR2D_ISNULL )
{
  QVector2D * obj = (QVector2D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
float x() const
*/
HB_FUNC_STATIC( QVECTOR2D_X )
{
  QVector2D * obj = (QVector2D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->x (  ) );
  }
}


/*
float y() const
*/
HB_FUNC_STATIC( QVECTOR2D_Y )
{
  QVector2D * obj = (QVector2D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->y (  ) );
  }
}


/*
void setX(float x)
*/
HB_FUNC_STATIC( QVECTOR2D_SETX )
{
  QVector2D * obj = (QVector2D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    float par1 = hb_parnd(1);
    obj->setX ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setY(float y)
*/
HB_FUNC_STATIC( QVECTOR2D_SETY )
{
  QVector2D * obj = (QVector2D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    float par1 = hb_parnd(1);
    obj->setY ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
float length() const
*/
HB_FUNC_STATIC( QVECTOR2D_LENGTH )
{
  QVector2D * obj = (QVector2D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->length (  ) );
  }
}


/*
float lengthSquared() const
*/
HB_FUNC_STATIC( QVECTOR2D_LENGTHSQUARED )
{
  QVector2D * obj = (QVector2D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->lengthSquared (  ) );
  }
}


/*
QVector2D normalized() const
*/
HB_FUNC_STATIC( QVECTOR2D_NORMALIZED )
{
  QVector2D * obj = (QVector2D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector2D * ptr = new QVector2D( obj->normalized (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR2D" );
  }
}


/*
void normalize()
*/
HB_FUNC_STATIC( QVECTOR2D_NORMALIZE )
{
  QVector2D * obj = (QVector2D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->normalize (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
float distanceToPoint(const QVector2D &point) const
*/
HB_FUNC_STATIC( QVECTOR2D_DISTANCETOPOINT )
{
  QVector2D * obj = (QVector2D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector2D * par1 = (QVector2D *) _qtxhb_itemGetPtr(1);
    hb_retnd( obj->distanceToPoint ( *par1 ) );
  }
}


/*
float distanceToLine(const QVector2D& point, const QVector2D& direction) const
*/
HB_FUNC_STATIC( QVECTOR2D_DISTANCETOLINE )
{
  QVector2D * obj = (QVector2D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector2D * par1 = (QVector2D *) _qtxhb_itemGetPtr(1);
    QVector2D * par2 = (QVector2D *) _qtxhb_itemGetPtr(2);
    hb_retnd( obj->distanceToLine ( *par1, *par2 ) );
  }
}


/*
QVector3D toVector3D() const
*/
HB_FUNC_STATIC( QVECTOR2D_TOVECTOR3D )
{
  QVector2D * obj = (QVector2D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector3D * ptr = new QVector3D( obj->toVector3D (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR3D" );
  }
}


/*
QVector4D toVector4D() const
*/
HB_FUNC_STATIC( QVECTOR2D_TOVECTOR4D )
{
  QVector2D * obj = (QVector2D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector4D * ptr = new QVector4D( obj->toVector4D (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR4D" );
  }
}


/*
QPoint toPoint() const
*/
HB_FUNC_STATIC( QVECTOR2D_TOPOINT )
{
  QVector2D * obj = (QVector2D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->toPoint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QPointF toPointF() const
*/
HB_FUNC_STATIC( QVECTOR2D_TOPOINTF )
{
  QVector2D * obj = (QVector2D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->toPointF (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
static float dotProduct(const QVector2D& v1, const QVector2D& v2)
*/
HB_FUNC_STATIC( QVECTOR2D_DOTPRODUCT )
{
  QVector2D * par1 = (QVector2D *) _qtxhb_itemGetPtr(1);
  QVector2D * par2 = (QVector2D *) _qtxhb_itemGetPtr(2);
  hb_retnd( QVector2D::dotProduct ( *par1, *par2 ) );
}



HB_FUNC_STATIC( QVECTOR2D_NEWFROM )
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

HB_FUNC_STATIC( QVECTOR2D_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QVECTOR2D_NEWFROM );
}

HB_FUNC_STATIC( QVECTOR2D_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QVECTOR2D_NEWFROM );
}

HB_FUNC_STATIC( QVECTOR2D_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QVECTOR2D_SETSELFDESTRUCTION )
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