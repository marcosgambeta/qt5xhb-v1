/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QVECTOR3D
REQUEST QVECTOR4D
#endif

CLASS QQuaternion

   DATA pointer
   DATA class_id INIT Class_Id_QQuaternion
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD isNull
   METHOD isIdentity
   METHOD vector
   METHOD setVector1
   METHOD setVector2
   METHOD x
   METHOD y
   METHOD z
   METHOD scalar
   METHOD setX
   METHOD setY
   METHOD setZ
   METHOD setScalar
   METHOD length
   METHOD lengthSquared
   METHOD normalized
   METHOD normalize
   METHOD conjugate
   METHOD rotatedVector
   METHOD toVector4D
   METHOD fromAxisAndAngle1
   METHOD fromAxisAndAngle2
   METHOD slerp
   METHOD nlerp
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQuaternion
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QQuaternion>
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
#include <QQuaternion>
#endif
#endif

/*
QQuaternion()
*/
HB_FUNC_STATIC( QQUATERNION_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QQuaternion * o = new QQuaternion (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQuaternion *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QQuaternion(float scalar, float xpos, float ypos, float zpos)
*/
HB_FUNC_STATIC( QQUATERNION_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  float par1 = hb_parnd(1);
  float par2 = hb_parnd(2);
  float par3 = hb_parnd(3);
  float par4 = hb_parnd(4);
  QQuaternion * o = new QQuaternion ( par1, par2, par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQuaternion *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QQuaternion(float scalar, const QVector3D& vector)
*/
HB_FUNC_STATIC( QQUATERNION_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  float par1 = hb_parnd(1);
  QVector3D * par2 = (QVector3D *) _qtxhb_itemGetPtr(2);
  QQuaternion * o = new QQuaternion ( par1, *par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQuaternion *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QQuaternion(const QVector4D& vector)
*/
HB_FUNC_STATIC( QQUATERNION_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QVector4D * par1 = (QVector4D *) _qtxhb_itemGetPtr(1);
  QQuaternion * o = new QQuaternion ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QQuaternion *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QQuaternion()
//[2]QQuaternion(float scalar, float xpos, float ypos, float zpos)
//[3]QQuaternion(float scalar, const QVector3D& vector)
//[4]QQuaternion(const QVector4D& vector)

HB_FUNC_STATIC( QQUATERNION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QQUATERNION_NEW1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QQUATERNION_NEW2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISOBJECT(2) )
  {
    HB_FUNC_EXEC( QQUATERNION_NEW3 );
  }
  else if( ISNUMPAR(1) && ISOBJECT(1) )
  {
    HB_FUNC_EXEC( QQUATERNION_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QQUATERNION_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QQuaternion * obj = (QQuaternion *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QQUATERNION_ISNULL )
{
  QQuaternion * obj = (QQuaternion *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
bool isIdentity() const
*/
HB_FUNC_STATIC( QQUATERNION_ISIDENTITY )
{
  QQuaternion * obj = (QQuaternion *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isIdentity (  ) );
  }
}


/*
QVector3D vector() const
*/
HB_FUNC_STATIC( QQUATERNION_VECTOR )
{
  QQuaternion * obj = (QQuaternion *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector3D * ptr = new QVector3D( obj->vector (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR3D" );
  }
}


/*
void setVector(const QVector3D& vector)
*/
HB_FUNC_STATIC( QQUATERNION_SETVECTOR1 )
{
  QQuaternion * obj = (QQuaternion *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector3D * par1 = (QVector3D *) _qtxhb_itemGetPtr(1);
    obj->setVector ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVector(float x, float y, float z)
*/
HB_FUNC_STATIC( QQUATERNION_SETVECTOR2 )
{
  QQuaternion * obj = (QQuaternion *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    float par1 = hb_parnd(1);
    float par2 = hb_parnd(2);
    float par3 = hb_parnd(3);
    obj->setVector ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
float x() const
*/
HB_FUNC_STATIC( QQUATERNION_X )
{
  QQuaternion * obj = (QQuaternion *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->x (  ) );
  }
}


/*
float y() const
*/
HB_FUNC_STATIC( QQUATERNION_Y )
{
  QQuaternion * obj = (QQuaternion *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->y (  ) );
  }
}


/*
float z() const
*/
HB_FUNC_STATIC( QQUATERNION_Z )
{
  QQuaternion * obj = (QQuaternion *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->z (  ) );
  }
}


/*
float scalar() const
*/
HB_FUNC_STATIC( QQUATERNION_SCALAR )
{
  QQuaternion * obj = (QQuaternion *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->scalar (  ) );
  }
}


/*
void setX(float x)
*/
HB_FUNC_STATIC( QQUATERNION_SETX )
{
  QQuaternion * obj = (QQuaternion *) _qtxhb_itemGetPtrStackSelfItem();
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
HB_FUNC_STATIC( QQUATERNION_SETY )
{
  QQuaternion * obj = (QQuaternion *) _qtxhb_itemGetPtrStackSelfItem();
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
HB_FUNC_STATIC( QQUATERNION_SETZ )
{
  QQuaternion * obj = (QQuaternion *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    float par1 = hb_parnd(1);
    obj->setZ ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScalar(float scalar)
*/
HB_FUNC_STATIC( QQUATERNION_SETSCALAR )
{
  QQuaternion * obj = (QQuaternion *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    float par1 = hb_parnd(1);
    obj->setScalar ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
float length() const
*/
HB_FUNC_STATIC( QQUATERNION_LENGTH )
{
  QQuaternion * obj = (QQuaternion *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->length (  ) );
  }
}


/*
float lengthSquared() const
*/
HB_FUNC_STATIC( QQUATERNION_LENGTHSQUARED )
{
  QQuaternion * obj = (QQuaternion *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->lengthSquared (  ) );
  }
}


/*
QQuaternion normalized() const
*/
HB_FUNC_STATIC( QQUATERNION_NORMALIZED )
{
  QQuaternion * obj = (QQuaternion *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQuaternion * ptr = new QQuaternion( obj->normalized (  ) );
    _qt4xhb_createReturnClass ( ptr, "QQUATERNION", true );
  }
}


/*
void normalize()
*/
HB_FUNC_STATIC( QQUATERNION_NORMALIZE )
{
  QQuaternion * obj = (QQuaternion *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->normalize (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QQuaternion conjugate() const
*/
HB_FUNC_STATIC( QQUATERNION_CONJUGATE )
{
  QQuaternion * obj = (QQuaternion *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQuaternion * ptr = new QQuaternion( obj->conjugate (  ) );
    _qt4xhb_createReturnClass ( ptr, "QQUATERNION", true );
  }
}


/*
QVector3D rotatedVector(const QVector3D& vector) const
*/
HB_FUNC_STATIC( QQUATERNION_ROTATEDVECTOR )
{
  QQuaternion * obj = (QQuaternion *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector3D * par1 = (QVector3D *) _qtxhb_itemGetPtr(1);
    QVector3D * ptr = new QVector3D( obj->rotatedVector ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR3D" );
  }
}


/*
QVector4D toVector4D() const
*/
HB_FUNC_STATIC( QQUATERNION_TOVECTOR4D )
{
  QQuaternion * obj = (QQuaternion *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector4D * ptr = new QVector4D( obj->toVector4D (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR4D" );
  }
}


/*
static QQuaternion fromAxisAndAngle(const QVector3D& axis, float angle)
*/
HB_FUNC_STATIC( QQUATERNION_FROMAXISANDANGLE1 )
{
  QVector3D * par1 = (QVector3D *) _qtxhb_itemGetPtr(1);
  float par2 = hb_parnd(2);
  QQuaternion * ptr = new QQuaternion( QQuaternion::fromAxisAndAngle ( *par1, par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QQUATERNION", true );
}


/*
static QQuaternion fromAxisAndAngle(float x, float y, float z, float angle)
*/
HB_FUNC_STATIC( QQUATERNION_FROMAXISANDANGLE2 )
{
  float par1 = hb_parnd(1);
  float par2 = hb_parnd(2);
  float par3 = hb_parnd(3);
  float par4 = hb_parnd(4);
  QQuaternion * ptr = new QQuaternion( QQuaternion::fromAxisAndAngle ( par1, par2, par3, par4 ) );
  _qt4xhb_createReturnClass ( ptr, "QQUATERNION", true );
}


/*
static QQuaternion slerp(const QQuaternion& q1, const QQuaternion& q2, float t)
*/
HB_FUNC_STATIC( QQUATERNION_SLERP )
{
  QQuaternion * par1 = (QQuaternion *) _qtxhb_itemGetPtr(1);
  QQuaternion * par2 = (QQuaternion *) _qtxhb_itemGetPtr(2);
  float par3 = hb_parnd(3);
  QQuaternion * ptr = new QQuaternion( QQuaternion::slerp ( *par1, *par2, par3 ) );
  _qt4xhb_createReturnClass ( ptr, "QQUATERNION", true );
}


/*
static QQuaternion nlerp(const QQuaternion& q1, const QQuaternion& q2, float t)
*/
HB_FUNC_STATIC( QQUATERNION_NLERP )
{
  QQuaternion * par1 = (QQuaternion *) _qtxhb_itemGetPtr(1);
  QQuaternion * par2 = (QQuaternion *) _qtxhb_itemGetPtr(2);
  float par3 = hb_parnd(3);
  QQuaternion * ptr = new QQuaternion( QQuaternion::nlerp ( *par1, *par2, par3 ) );
  _qt4xhb_createReturnClass ( ptr, "QQUATERNION", true );
}



HB_FUNC_STATIC( QQUATERNION_NEWFROM )
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

HB_FUNC_STATIC( QQUATERNION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QQUATERNION_NEWFROM );
}

HB_FUNC_STATIC( QQUATERNION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QQUATERNION_NEWFROM );
}

HB_FUNC_STATIC( QQUATERNION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QQUATERNION_SETSELFDESTRUCTION )
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