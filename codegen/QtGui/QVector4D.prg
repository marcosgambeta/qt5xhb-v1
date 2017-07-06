$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVECTOR2D
REQUEST QVECTOR3D
REQUEST QPOINT
REQUEST QPOINTF
#endif

CLASS QVector4D

   DATA pointer
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

$destructor

#pragma BEGINDUMP

$includes

#include <QVector2D>
#include <QVector3D>

/*
QVector4D()
*/
HB_FUNC_STATIC( QVECTOR4D_NEW1 )
{
  QVector4D * o = new QVector4D ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QVector4D(float xpos, float ypos, float zpos, float wpos)
*/
HB_FUNC_STATIC( QVECTOR4D_NEW2 )
{
  QVector4D * o = new QVector4D ( PFLOAT(1), PFLOAT(2), PFLOAT(3), PFLOAT(4) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QVector4D(const QPoint& point)
*/
HB_FUNC_STATIC( QVECTOR4D_NEW3 )
{
  QVector4D * o = new QVector4D ( *PQPOINT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QVector4D(const QPointF& point)
*/
HB_FUNC_STATIC( QVECTOR4D_NEW4 )
{
  QVector4D * o = new QVector4D ( *PQPOINTF(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QVector4D(const QVector2D& vector)
*/
HB_FUNC_STATIC( QVECTOR4D_NEW5 )
{
  QVector4D * o = new QVector4D ( *PQVECTOR2D(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QVector4D(const QVector2D& vector, float zpos, float wpos)
*/
HB_FUNC_STATIC( QVECTOR4D_NEW6 )
{
  QVector4D * o = new QVector4D ( *PQVECTOR2D(1), PFLOAT(2), PFLOAT(3) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QVector4D(const QVector3D& vector)
*/
HB_FUNC_STATIC( QVECTOR4D_NEW7 )
{
  QVector4D * o = new QVector4D ( *PQVECTOR3D(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QVector4D(const QVector3D& vector, float wpos)
*/
HB_FUNC_STATIC( QVECTOR4D_NEW8 )
{
  QVector4D * o = new QVector4D ( *PQVECTOR3D(1), PFLOAT(2) );
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

$deleteMethod

/*
bool isNull() const
*/
HB_FUNC_STATIC( QVECTOR4D_ISNULL )
{
  QVector4D * obj = (QVector4D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNull () );
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
    RFLOAT( obj->x () );
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
    RFLOAT( obj->y () );
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
    RFLOAT( obj->z () );
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
    RFLOAT( obj->w () );
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
    obj->setX ( PFLOAT(1) );
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
    obj->setY ( PFLOAT(1) );
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
    obj->setZ ( PFLOAT(1) );
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
    obj->setW ( PFLOAT(1) );
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
    RFLOAT( obj->length () );
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
    RFLOAT( obj->lengthSquared () );
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
    QVector4D * ptr = new QVector4D( obj->normalized () );
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
    obj->normalize ();
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
    QVector2D * ptr = new QVector2D( obj->toVector2D () );
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
    QVector2D * ptr = new QVector2D( obj->toVector2DAffine () );
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
    QVector3D * ptr = new QVector3D( obj->toVector3D () );
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
    QVector3D * ptr = new QVector3D( obj->toVector3DAffine () );
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
    QPoint * ptr = new QPoint( obj->toPoint () );
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
    QPointF * ptr = new QPointF( obj->toPointF () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
static float dotProduct(const QVector4D& v1, const QVector4D& v2)
*/
HB_FUNC_STATIC( QVECTOR4D_DOTPRODUCT )
{
  RFLOAT( QVector4D::dotProduct ( *PQVECTOR4D(1), *PQVECTOR4D(2) ) );
}

$extraMethods

#pragma ENDDUMP
