$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVECTOR3D
REQUEST QVECTOR4D
REQUEST QPOINT
REQUEST QPOINTF
#endif

CLASS QVector2D

   DATA pointer
   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

$includes

#include <QVector3D>
#include <QVector4D>

/*
QVector2D()
*/
HB_FUNC_STATIC( QVECTOR2D_NEW1 )
{
  QVector2D * o = new QVector2D ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QVector2D(float xpos, float ypos)
*/
HB_FUNC_STATIC( QVECTOR2D_NEW2 )
{
  QVector2D * o = new QVector2D ( PFLOAT(1), PFLOAT(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QVector2D(const QPoint& point)
*/
HB_FUNC_STATIC( QVECTOR2D_NEW3 )
{
  QVector2D * o = new QVector2D ( *PQPOINT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QVector2D(const QPointF& point)
*/
HB_FUNC_STATIC( QVECTOR2D_NEW4 )
{
  QVector2D * o = new QVector2D ( *PQPOINTF(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QVector2D(const QVector3D& vector)
*/
HB_FUNC_STATIC( QVECTOR2D_NEW5 )
{
  QVector2D * o = new QVector2D ( *PQVECTOR3D(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QVector2D(const QVector4D& vector)
*/
HB_FUNC_STATIC( QVECTOR2D_NEW6 )
{
  QVector2D * o = new QVector2D ( *PQVECTOR4D(1) );
  _qt5xhb_storePointerAndFlag( o, false );
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

$deleteMethod

/*
bool isNull() const
*/
HB_FUNC_STATIC( QVECTOR2D_ISNULL )
{
  QVector2D * obj = (QVector2D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
float x() const
*/
HB_FUNC_STATIC( QVECTOR2D_X )
{
  QVector2D * obj = (QVector2D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RFLOAT( obj->x () );
  }
}


/*
float y() const
*/
HB_FUNC_STATIC( QVECTOR2D_Y )
{
  QVector2D * obj = (QVector2D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RFLOAT( obj->y () );
  }
}


/*
void setX(float x)
*/
HB_FUNC_STATIC( QVECTOR2D_SETX )
{
  QVector2D * obj = (QVector2D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setX ( PFLOAT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setY(float y)
*/
HB_FUNC_STATIC( QVECTOR2D_SETY )
{
  QVector2D * obj = (QVector2D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setY ( PFLOAT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
float length() const
*/
HB_FUNC_STATIC( QVECTOR2D_LENGTH )
{
  QVector2D * obj = (QVector2D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RFLOAT( obj->length () );
  }
}


/*
float lengthSquared() const
*/
HB_FUNC_STATIC( QVECTOR2D_LENGTHSQUARED )
{
  QVector2D * obj = (QVector2D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RFLOAT( obj->lengthSquared () );
  }
}


/*
QVector2D normalized() const
*/
HB_FUNC_STATIC( QVECTOR2D_NORMALIZED )
{
  QVector2D * obj = (QVector2D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector2D * ptr = new QVector2D( obj->normalized () );
    _qt5xhb_createReturnClass ( ptr, "QVECTOR2D" );
  }
}


/*
void normalize()
*/
HB_FUNC_STATIC( QVECTOR2D_NORMALIZE )
{
  QVector2D * obj = (QVector2D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->normalize ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
float distanceToPoint(const QVector2D &point) const
*/
HB_FUNC_STATIC( QVECTOR2D_DISTANCETOPOINT )
{
  QVector2D * obj = (QVector2D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RFLOAT( obj->distanceToPoint ( *PQVECTOR2D(1) ) );
  }
}


/*
float distanceToLine(const QVector2D& point, const QVector2D& direction) const
*/
HB_FUNC_STATIC( QVECTOR2D_DISTANCETOLINE )
{
  QVector2D * obj = (QVector2D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RFLOAT( obj->distanceToLine ( *PQVECTOR2D(1), *PQVECTOR2D(2) ) );
  }
}


/*
QVector3D toVector3D() const
*/
HB_FUNC_STATIC( QVECTOR2D_TOVECTOR3D )
{
  QVector2D * obj = (QVector2D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector3D * ptr = new QVector3D( obj->toVector3D () );
    _qt5xhb_createReturnClass ( ptr, "QVECTOR3D" );
  }
}


/*
QVector4D toVector4D() const
*/
HB_FUNC_STATIC( QVECTOR2D_TOVECTOR4D )
{
  QVector2D * obj = (QVector2D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector4D * ptr = new QVector4D( obj->toVector4D () );
    _qt5xhb_createReturnClass ( ptr, "QVECTOR4D" );
  }
}


/*
QPoint toPoint() const
*/
HB_FUNC_STATIC( QVECTOR2D_TOPOINT )
{
  QVector2D * obj = (QVector2D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->toPoint () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QPointF toPointF() const
*/
HB_FUNC_STATIC( QVECTOR2D_TOPOINTF )
{
  QVector2D * obj = (QVector2D *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->toPointF () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
static float dotProduct(const QVector2D& v1, const QVector2D& v2)
*/
HB_FUNC_STATIC( QVECTOR2D_DOTPRODUCT )
{
  RFLOAT( QVector2D::dotProduct ( *PQVECTOR2D(1), *PQVECTOR2D(2) ) );
}

$extraMethods

#pragma ENDDUMP
