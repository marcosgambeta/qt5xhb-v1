$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVECTOR2D
REQUEST QVECTOR4D
REQUEST QPOINT
REQUEST QPOINTF
#endif

CLASS QVector3D

   DATA pointer
   DATA self_destruction INIT .F.

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
   METHOD distanceToPlane
   METHOD distanceToLine
   METHOD toVector2D
   METHOD toVector4D
   METHOD toPoint
   METHOD toPointF
   METHOD dotProduct
   METHOD crossProduct
   METHOD normal

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
#include <QVector4D>

/*
QVector3D()
*/
$internalConstructor=|new1|

/*
QVector3D(float xpos, float ypos, float zpos)
*/
$internalConstructor=|new2|float,float,float

/*
QVector3D(const QPoint& point)
*/
$internalConstructor=|new3|const QPoint &

/*
QVector3D(const QPointF& point)
*/
$internalConstructor=|new4|const QPointF &

/*
QVector3D(const QVector2D& vector)
*/
$internalConstructor=|new5|const QVector2D &

/*
QVector3D(const QVector2D& vector, float zpos)
*/
$internalConstructor=|new6|const QVector2D &,float

/*
QVector3D(const QVector4D& vector)
*/
$internalConstructor=|new7|const QVector4D &

//[1]QVector3D()
//[2]QVector3D(float xpos, float ypos, float zpos)
//[3]QVector3D(const QPoint& point)
//[4]QVector3D(const QPointF& point)
//[5]QVector3D(const QVector2D& vector)
//[6]QVector3D(const QVector2D& vector, float zpos)
//[7]QVector3D(const QVector4D& vector)

HB_FUNC_STATIC( QVECTOR3D_NEW )
{
  if( ISNUMPAR(0) )
  {
    QVector3D_new1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QVector3D_new2();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QVector3D_new3();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QVector3D_new4();
  }
  else if( ISNUMPAR(1) && ISQVECTOR2D(1) )
  {
    QVector3D_new5();
  }
  else if( ISNUMPAR(2) && ISQVECTOR2D(1) && ISNUM(2) )
  {
    QVector3D_new6();
  }
  else if( ISNUMPAR(1) && ISQVECTOR4D(1) )
  {
    QVector3D_new7();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool isNull() const
*/
$method=|bool|isNull|

/*
float x() const
*/
$method=|float|x|

/*
float y() const
*/
$method=|float|y|

/*
float z() const
*/
$method=|float|z|

/*
void setX(float x)
*/
$method=|void|setX|float

/*
void setY(float y)
*/
$method=|void|setY|float

/*
void setZ(float z)
*/
$method=|void|setZ|float

/*
float length() const
*/
$method=|float|length|

/*
float lengthSquared() const
*/
$method=|float|lengthSquared|

/*
QVector3D normalized() const
*/
$method=|QVector3D|normalized|

/*
void normalize()
*/
$method=|void|normalize|

/*
float distanceToPoint(const QVector3D& point) const
*/
$method=|float|distanceToPoint|const QVector3D &

/*
float distanceToPlane(const QVector3D& plane, const QVector3D& normal) const
*/
$internalMethod=|float|distanceToPlane,distanceToPlane1|const QVector3D &,const QVector3D &

/*
float distanceToPlane(const QVector3D& plane1, const QVector3D& plane2, const QVector3D& plane3) const
*/
$internalMethod=|float|distanceToPlane,distanceToPlane2|const QVector3D &,const QVector3D &,const QVector3D &

//[1]float distanceToPlane(const QVector3D& plane, const QVector3D& normal) const
//[2]float distanceToPlane(const QVector3D& plane1, const QVector3D& plane2, const QVector3D& plane3) const

HB_FUNC_STATIC( QVECTOR3D_DISTANCETOPLANE )
{
  if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISQVECTOR3D(2) )
  {
    QVector3D_distanceToPlane1();
  }
  else if( ISNUMPAR(3) && ISQVECTOR3D(1) && ISQVECTOR3D(2) && ISQVECTOR3D(3) )
  {
    QVector3D_distanceToPlane2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
float distanceToLine(const QVector3D& point, const QVector3D& direction) const
*/
$method=|float|distanceToLine|const QVector3D &,const QVector3D &

/*
QVector2D toVector2D() const
*/
$method=|QVector2D|toVector2D|

/*
QVector4D toVector4D() const
*/
$method=|QVector4D|toVector4D|

/*
QPoint toPoint() const
*/
$method=|QPoint|toPoint|

/*
QPointF toPointF() const
*/
$method=|QPointF|toPointF|

/*
static float dotProduct(const QVector3D& v1, const QVector3D& v2)
*/
$staticMethod=|float|dotProduct|const QVector3D &,const QVector3D &

/*
static QVector3D crossProduct(const QVector3D& v1, const QVector3D& v2)
*/
$staticMethod=|QVector3D|crossProduct|const QVector3D &,const QVector3D &

/*
static QVector3D normal(const QVector3D& v1, const QVector3D& v2)
*/
$staticInternalMethod=|QVector3D|normal,normal1|const QVector3D &,const QVector3D &

/*
static QVector3D normal(const QVector3D& v1, const QVector3D& v2, const QVector3D& v3)
*/
$staticInternalMethod=|QVector3D|normal,normal2|const QVector3D &,const QVector3D &,const QVector3D &

//[1]static QVector3D normal(const QVector3D& v1, const QVector3D& v2)
//[2]static QVector3D normal(const QVector3D& v1, const QVector3D& v2, const QVector3D& v3)

HB_FUNC_STATIC( QVECTOR3D_NORMAL )
{
  if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISQVECTOR3D(2) )
  {
    QVector3D_normal1();
  }
  else if( ISNUMPAR(3) && ISQVECTOR3D(1) && ISQVECTOR3D(2) && ISQVECTOR3D(3) )
  {
    QVector3D_normal2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
