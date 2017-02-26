/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QVECTOR2D
REQUEST QVECTOR4D
REQUEST QPOINT
REQUEST QPOINTF
#endif

CLASS QVector3D

   DATA pointer
   DATA class_id INIT Class_Id_QVector3D
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
   METHOD isNull
   METHOD x
   METHOD y
   METHOD z
   METHOD setX
   METHOD setY
   METHOD setZ
   METHOD length
   METHOD lengthSquared
   METHOD normalized
   METHOD normalize
   METHOD distanceToPoint
   METHOD distanceToPlane1
   METHOD distanceToPlane2
   METHOD distanceToPlane
   METHOD distanceToLine
   METHOD toVector2D
   METHOD toVector4D
   METHOD toPoint
   METHOD toPointF
   METHOD dotProduct
   METHOD crossProduct
   METHOD normal1
   METHOD normal2
   METHOD normal
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVector3D
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QVector3D>
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QVector3D>
#endif
#endif

#include <QVector2D>
#include <QVector4D>

/*
QVector3D()
*/
HB_FUNC_STATIC( QVECTOR3D_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QVector3D * o = new QVector3D (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVector3D *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QVector3D(float xpos, float ypos, float zpos)
*/
HB_FUNC_STATIC( QVECTOR3D_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  float par1 = hb_parnd(1);
  float par2 = hb_parnd(2);
  float par3 = hb_parnd(3);
  QVector3D * o = new QVector3D ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVector3D *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QVector3D(const QPoint& point)
*/
HB_FUNC_STATIC( QVECTOR3D_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
  QVector3D * o = new QVector3D ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVector3D *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QVector3D(const QPointF& point)
*/
HB_FUNC_STATIC( QVECTOR3D_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPointF * par1 = (QPointF *) _qtxhb_itemGetPtr(1);
  QVector3D * o = new QVector3D ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVector3D *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QVector3D(const QVector2D& vector)
*/
HB_FUNC_STATIC( QVECTOR3D_NEW5 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QVector2D * par1 = (QVector2D *) _qtxhb_itemGetPtr(1);
  QVector3D * o = new QVector3D ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVector3D *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QVector3D(const QVector2D& vector, float zpos)
*/
HB_FUNC_STATIC( QVECTOR3D_NEW6 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QVector2D * par1 = (QVector2D *) _qtxhb_itemGetPtr(1);
  float par2 = hb_parnd(2);
  QVector3D * o = new QVector3D ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVector3D *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QVector3D(const QVector4D& vector)
*/
HB_FUNC_STATIC( QVECTOR3D_NEW7 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QVector4D * par1 = (QVector4D *) _qtxhb_itemGetPtr(1);
  QVector3D * o = new QVector3D ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVector3D *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QVector3D()
//[2]QVector3D(float xpos, float ypos, float zpos)
//[3]QVector3D(const QPoint& point)
//[4]QVector3D(const QPointF& point)
//[5]QVector3D(const QVector2D& vector)
//[6]QVector3D(const QVector2D& vector, float zpos)
//[7]QVector3D(const QVector4D& vector)

HB_FUNC_STATIC( QVECTOR3D_NEW )
{
  // TODO: implementar
}

HB_FUNC_STATIC( QVECTOR3D_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QVECTOR3D_ISNULL )
{
  QVector3D * obj = (QVector3D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
float x() const
*/
HB_FUNC_STATIC( QVECTOR3D_X )
{
  QVector3D * obj = (QVector3D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->x (  ) );
  }
}


/*
float y() const
*/
HB_FUNC_STATIC( QVECTOR3D_Y )
{
  QVector3D * obj = (QVector3D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->y (  ) );
  }
}


/*
float z() const
*/
HB_FUNC_STATIC( QVECTOR3D_Z )
{
  QVector3D * obj = (QVector3D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->z (  ) );
  }
}


/*
void setX(float x)
*/
HB_FUNC_STATIC( QVECTOR3D_SETX )
{
  QVector3D * obj = (QVector3D *) _qtxhb_itemGetPtrStackSelfItem();
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
HB_FUNC_STATIC( QVECTOR3D_SETY )
{
  QVector3D * obj = (QVector3D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    float par1 = hb_parnd(1);
    obj->setY ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setZ(float z)
*/
HB_FUNC_STATIC( QVECTOR3D_SETZ )
{
  QVector3D * obj = (QVector3D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    float par1 = hb_parnd(1);
    obj->setZ ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
float length() const
*/
HB_FUNC_STATIC( QVECTOR3D_LENGTH )
{
  QVector3D * obj = (QVector3D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->length (  ) );
  }
}


/*
float lengthSquared() const
*/
HB_FUNC_STATIC( QVECTOR3D_LENGTHSQUARED )
{
  QVector3D * obj = (QVector3D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->lengthSquared (  ) );
  }
}


/*
QVector3D normalized() const
*/
HB_FUNC_STATIC( QVECTOR3D_NORMALIZED )
{
  QVector3D * obj = (QVector3D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector3D * ptr = new QVector3D( obj->normalized (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR3D" );
  }
}


/*
void normalize()
*/
HB_FUNC_STATIC( QVECTOR3D_NORMALIZE )
{
  QVector3D * obj = (QVector3D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->normalize (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
float distanceToPoint(const QVector3D& point) const
*/
HB_FUNC_STATIC( QVECTOR3D_DISTANCETOPOINT )
{
  QVector3D * obj = (QVector3D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector3D * par1 = (QVector3D *) _qtxhb_itemGetPtr(1);
    hb_retnd( obj->distanceToPoint ( *par1 ) );
  }
}


/*
float distanceToPlane(const QVector3D& plane, const QVector3D& normal) const
*/
HB_FUNC_STATIC( QVECTOR3D_DISTANCETOPLANE1 )
{
  QVector3D * obj = (QVector3D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector3D * par1 = (QVector3D *) _qtxhb_itemGetPtr(1);
    QVector3D * par2 = (QVector3D *) _qtxhb_itemGetPtr(2);
    hb_retnd( obj->distanceToPlane ( *par1, *par2 ) );
  }
}


/*
float distanceToPlane(const QVector3D& plane1, const QVector3D& plane2, const QVector3D& plane3) const
*/
HB_FUNC_STATIC( QVECTOR3D_DISTANCETOPLANE2 )
{
  QVector3D * obj = (QVector3D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector3D * par1 = (QVector3D *) _qtxhb_itemGetPtr(1);
    QVector3D * par2 = (QVector3D *) _qtxhb_itemGetPtr(2);
    QVector3D * par3 = (QVector3D *) _qtxhb_itemGetPtr(3);
    hb_retnd( obj->distanceToPlane ( *par1, *par2, *par3 ) );
  }
}


//[1]float distanceToPlane(const QVector3D& plane, const QVector3D& normal) const
//[2]float distanceToPlane(const QVector3D& plane1, const QVector3D& plane2, const QVector3D& plane3) const

HB_FUNC_STATIC( QVECTOR3D_DISTANCETOPLANE )
{
  // TODO: implementar
}

/*
float distanceToLine(const QVector3D& point, const QVector3D& direction) const
*/
HB_FUNC_STATIC( QVECTOR3D_DISTANCETOLINE )
{
  QVector3D * obj = (QVector3D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector3D * par1 = (QVector3D *) _qtxhb_itemGetPtr(1);
    QVector3D * par2 = (QVector3D *) _qtxhb_itemGetPtr(2);
    hb_retnd( obj->distanceToLine ( *par1, *par2 ) );
  }
}


/*
QVector2D toVector2D() const
*/
HB_FUNC_STATIC( QVECTOR3D_TOVECTOR2D )
{
  QVector3D * obj = (QVector3D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector2D * ptr = new QVector2D( obj->toVector2D (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR2D" );
  }
}


/*
QVector4D toVector4D() const
*/
HB_FUNC_STATIC( QVECTOR3D_TOVECTOR4D )
{
  QVector3D * obj = (QVector3D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector4D * ptr = new QVector4D( obj->toVector4D (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR4D" );
  }
}


/*
QPoint toPoint() const
*/
HB_FUNC_STATIC( QVECTOR3D_TOPOINT )
{
  QVector3D * obj = (QVector3D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->toPoint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QPointF toPointF() const
*/
HB_FUNC_STATIC( QVECTOR3D_TOPOINTF )
{
  QVector3D * obj = (QVector3D *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->toPointF (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
static float dotProduct(const QVector3D& v1, const QVector3D& v2)
*/
HB_FUNC_STATIC( QVECTOR3D_DOTPRODUCT )
{
  QVector3D * par1 = (QVector3D *) _qtxhb_itemGetPtr(1);
  QVector3D * par2 = (QVector3D *) _qtxhb_itemGetPtr(2);
  hb_retnd( QVector3D::dotProduct ( *par1, *par2 ) );
}


/*
static QVector3D crossProduct(const QVector3D& v1, const QVector3D& v2)
*/
HB_FUNC_STATIC( QVECTOR3D_CROSSPRODUCT )
{
  QVector3D * par1 = (QVector3D *) _qtxhb_itemGetPtr(1);
  QVector3D * par2 = (QVector3D *) _qtxhb_itemGetPtr(2);
  QVector3D * ptr = new QVector3D( QVector3D::crossProduct ( *par1, *par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QVECTOR3D" );
}


/*
static QVector3D normal(const QVector3D& v1, const QVector3D& v2)
*/
HB_FUNC_STATIC( QVECTOR3D_NORMAL1 )
{
  QVector3D * par1 = (QVector3D *) _qtxhb_itemGetPtr(1);
  QVector3D * par2 = (QVector3D *) _qtxhb_itemGetPtr(2);
  QVector3D * ptr = new QVector3D( QVector3D::normal ( *par1, *par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QVECTOR3D" );
}

/*
static QVector3D normal(const QVector3D& v1, const QVector3D& v2, const QVector3D& v3)
*/
HB_FUNC_STATIC( QVECTOR3D_NORMAL2 )
{
  QVector3D * par1 = (QVector3D *) _qtxhb_itemGetPtr(1);
  QVector3D * par2 = (QVector3D *) _qtxhb_itemGetPtr(2);
  QVector3D * par3 = (QVector3D *) _qtxhb_itemGetPtr(3);
  QVector3D * ptr = new QVector3D( QVector3D::normal ( *par1, *par2, *par3 ) );
  _qt4xhb_createReturnClass ( ptr, "QVECTOR3D" );
}


//[1]static QVector3D normal(const QVector3D& v1, const QVector3D& v2)
//[2]static QVector3D normal(const QVector3D& v1, const QVector3D& v2, const QVector3D& v3)

HB_FUNC_STATIC( QVECTOR3D_NORMAL )
{
  // TODO: implementar
}


HB_FUNC_STATIC( QVECTOR3D_NEWFROM )
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

HB_FUNC_STATIC( QVECTOR3D_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QVECTOR3D_NEWFROM );
}

HB_FUNC_STATIC( QVECTOR3D_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QVECTOR3D_NEWFROM );
}

HB_FUNC_STATIC( QVECTOR3D_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QVECTOR3D_SETSELFDESTRUCTION )
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