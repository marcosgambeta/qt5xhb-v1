/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVECTOR2D
REQUEST QVECTOR3D
REQUEST QPOINT
REQUEST QPOINTF
#endif

CLASS QVector4D

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new
   METHOD delete
   METHOD isNull
   METHOD x
   METHOD y
   METHOD z
   METHOD w
   METHOD setX
   METHOD setY
   METHOD setZ
   METHOD setW
   METHOD length
   METHOD lengthSquared
   METHOD normalized
   METHOD normalize
   METHOD toVector2D
   METHOD toVector2DAffine
   METHOD toVector3D
   METHOD toVector3DAffine
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

PROCEDURE destroyObject () CLASS QVector4D
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QVector4D>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QVector4D>
#endif

#include <QVector2D>
#include <QVector3D>

/*
QVector4D()
*/
HB_FUNC_STATIC( QVECTOR4D_NEW1 )
{
  QVector4D * o = new QVector4D (  );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QVector4D(float xpos, float ypos, float zpos, float wpos)
*/
HB_FUNC_STATIC( QVECTOR4D_NEW2 )
{
  float par1 = hb_parnd(1);
  float par2 = hb_parnd(2);
  float par3 = hb_parnd(3);
  float par4 = hb_parnd(4);
  QVector4D * o = new QVector4D ( par1, par2, par3, par4 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QVector4D(const QPoint& point)
*/
HB_FUNC_STATIC( QVECTOR4D_NEW3 )
{
  QPoint * par1 = (QPoint *) _qt5xhb_itemGetPtr(1);
  QVector4D * o = new QVector4D ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QVector4D(const QPointF& point)
*/
HB_FUNC_STATIC( QVECTOR4D_NEW4 )
{
  QPointF * par1 = (QPointF *) _qt5xhb_itemGetPtr(1);
  QVector4D * o = new QVector4D ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QVector4D(const QVector2D& vector)
*/
HB_FUNC_STATIC( QVECTOR4D_NEW5 )
{
  QVector2D * par1 = (QVector2D *) _qt5xhb_itemGetPtr(1);
  QVector4D * o = new QVector4D ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QVector4D(const QVector2D& vector, float zpos, float wpos)
*/
HB_FUNC_STATIC( QVECTOR4D_NEW6 )
{
  QVector2D * par1 = (QVector2D *) _qt5xhb_itemGetPtr(1);
  float par2 = hb_parnd(2);
  float par3 = hb_parnd(3);
  QVector4D * o = new QVector4D ( *par1, par2, par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QVector4D(const QVector3D& vector)
*/
HB_FUNC_STATIC( QVECTOR4D_NEW7 )
{
  QVector3D * par1 = (QVector3D *) _qt5xhb_itemGetPtr(1);
  QVector4D * o = new QVector4D ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QVector4D(const QVector3D& vector, float wpos)
*/
HB_FUNC_STATIC( QVECTOR4D_NEW8 )
{
  QVector3D * par1 = (QVector3D *) _qt5xhb_itemGetPtr(1);
  float par2 = hb_parnd(2);
  QVector4D * o = new QVector4D ( *par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QVector4D()
//[2]QVector4D(float xpos, float ypos, float zpos, float wpos)
//[3]QVector4D(const QPoint& point)
//[4]QVector4D(const QPointF& point)
//[5]QVector4D(const QVector2D& vector)
//[6]QVector4D(const QVector2D& vector, float zpos, float wpos)
//[7]QVector4D(const QVector3D& vector)
//[8]QVector4D(const QVector3D& vector, float wpos)

HB_FUNC_STATIC( QVECTOR4D_NEW )
{
  // TODO: implementar
}

HB_FUNC_STATIC( QVECTOR4D_DELETE )
{
  QVector4D * obj = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isNull() const
*/
HB_FUNC_STATIC( QVECTOR4D_ISNULL )
{
  QVector4D * obj = (QVector4D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
float x() const
*/
HB_FUNC_STATIC( QVECTOR4D_X )
{
  QVector4D * obj = (QVector4D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->x (  ) );
  }
}


/*
float y() const
*/
HB_FUNC_STATIC( QVECTOR4D_Y )
{
  QVector4D * obj = (QVector4D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->y (  ) );
  }
}


/*
float z() const
*/
HB_FUNC_STATIC( QVECTOR4D_Z )
{
  QVector4D * obj = (QVector4D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->z (  ) );
  }
}


/*
float w() const
*/
HB_FUNC_STATIC( QVECTOR4D_W )
{
  QVector4D * obj = (QVector4D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->w (  ) );
  }
}


/*
void setX(float x)
*/
HB_FUNC_STATIC( QVECTOR4D_SETX )
{
  QVector4D * obj = (QVector4D *) _qt5xhb_itemGetPtrStackSelfItem();
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
HB_FUNC_STATIC( QVECTOR4D_SETY )
{
  QVector4D * obj = (QVector4D *) _qt5xhb_itemGetPtrStackSelfItem();
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
HB_FUNC_STATIC( QVECTOR4D_SETZ )
{
  QVector4D * obj = (QVector4D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    float par1 = hb_parnd(1);
    obj->setZ ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setW(float w)
*/
HB_FUNC_STATIC( QVECTOR4D_SETW )
{
  QVector4D * obj = (QVector4D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    float par1 = hb_parnd(1);
    obj->setW ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
float length() const
*/
HB_FUNC_STATIC( QVECTOR4D_LENGTH )
{
  QVector4D * obj = (QVector4D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->length (  ) );
  }
}


/*
float lengthSquared() const
*/
HB_FUNC_STATIC( QVECTOR4D_LENGTHSQUARED )
{
  QVector4D * obj = (QVector4D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->lengthSquared (  ) );
  }
}


/*
QVector4D normalized() const
*/
HB_FUNC_STATIC( QVECTOR4D_NORMALIZED )
{
  QVector4D * obj = (QVector4D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector4D * ptr = new QVector4D( obj->normalized (  ) );
    _qt5xhb_createReturnClass ( ptr, "QVECTOR4D" );
  }
}


/*
void normalize()
*/
HB_FUNC_STATIC( QVECTOR4D_NORMALIZE )
{
  QVector4D * obj = (QVector4D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->normalize (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVector2D toVector2D() const
*/
HB_FUNC_STATIC( QVECTOR4D_TOVECTOR2D )
{
  QVector4D * obj = (QVector4D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector2D * ptr = new QVector2D( obj->toVector2D (  ) );
    _qt5xhb_createReturnClass ( ptr, "QVECTOR2D" );
  }
}


/*
QVector2D toVector2DAffine() const
*/
HB_FUNC_STATIC( QVECTOR4D_TOVECTOR2DAFFINE )
{
  QVector4D * obj = (QVector4D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector2D * ptr = new QVector2D( obj->toVector2DAffine (  ) );
    _qt5xhb_createReturnClass ( ptr, "QVECTOR2D" );
  }
}


/*
QVector3D toVector3D() const
*/
HB_FUNC_STATIC( QVECTOR4D_TOVECTOR3D )
{
  QVector4D * obj = (QVector4D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector3D * ptr = new QVector3D( obj->toVector3D (  ) );
    _qt5xhb_createReturnClass ( ptr, "QVECTOR3D" );
  }
}


/*
QVector3D toVector3DAffine() const
*/
HB_FUNC_STATIC( QVECTOR4D_TOVECTOR3DAFFINE )
{
  QVector4D * obj = (QVector4D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector3D * ptr = new QVector3D( obj->toVector3DAffine (  ) );
    _qt5xhb_createReturnClass ( ptr, "QVECTOR3D" );
  }
}


/*
QPoint toPoint() const
*/
HB_FUNC_STATIC( QVECTOR4D_TOPOINT )
{
  QVector4D * obj = (QVector4D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->toPoint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QPointF toPointF() const
*/
HB_FUNC_STATIC( QVECTOR4D_TOPOINTF )
{
  QVector4D * obj = (QVector4D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->toPointF (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
static float dotProduct(const QVector4D& v1, const QVector4D& v2)
*/
HB_FUNC_STATIC( QVECTOR4D_DOTPRODUCT )
{
  QVector4D * par1 = (QVector4D *) _qt5xhb_itemGetPtr(1);
  QVector4D * par2 = (QVector4D *) _qt5xhb_itemGetPtr(2);
  hb_retnd( QVector4D::dotProduct ( *par1, *par2 ) );
}



HB_FUNC_STATIC( QVECTOR4D_NEWFROM )
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

HB_FUNC_STATIC( QVECTOR4D_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QVECTOR4D_NEWFROM );
}

HB_FUNC_STATIC( QVECTOR4D_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QVECTOR4D_NEWFROM );
}

HB_FUNC_STATIC( QVECTOR4D_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QVECTOR4D_SETSELFDESTRUCTION )
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