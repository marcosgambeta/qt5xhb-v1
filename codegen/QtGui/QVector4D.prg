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
$internalConstructor=|new1|

/*
QVector4D(float xpos, float ypos, float zpos, float wpos)
*/
$internalConstructor=|new2|float,float,float,float

/*
QVector4D(const QPoint& point)
*/
$internalConstructor=|new3|const QPoint &

/*
QVector4D(const QPointF& point)
*/
$internalConstructor=|new4|const QPointF &

/*
QVector4D(const QVector2D& vector)
*/
$internalConstructor=|new5|const QVector2D &

/*
QVector4D(const QVector2D& vector, float zpos, float wpos)
*/
$internalConstructor=|new6|const QVector2D &,float,float

/*
QVector4D(const QVector3D& vector)
*/
$internalConstructor=|new7|const QVector3D &

/*
QVector4D(const QVector3D& vector, float wpos)
*/
$internalConstructor=|new8|const QVector3D &,float

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
  if( ISNUMPAR(0) )
  {
    QVector4D_new1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QVector4D_new2();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QVector4D_new3();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QVector4D_new4();
  }
  else if( ISNUMPAR(1) && ISQVECTOR2D(1) )
  {
    QVector4D_new5();
  }
  else if( ISNUMPAR(3) && ISQVECTOR2D(1) && ISNUM(2) && ISNUM(3) )
  {
    QVector4D_new6();
  }
  else if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    QVector4D_new7();
  }
  else if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISNUM(2) )
  {
    QVector4D_new8();
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
float w() const
*/
$method=|float|w|

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
void setW(float w)
*/
$method=|void|setW|float

/*
float length() const
*/
$method=|float|length|

/*
float lengthSquared() const
*/
$method=|float|lengthSquared|

/*
QVector4D normalized() const
*/
$method=|QVector4D|normalized|

/*
void normalize()
*/
$method=|void|normalize|

/*
QVector2D toVector2D() const
*/
$method=|QVector2D|toVector2D|

/*
QVector2D toVector2DAffine() const
*/
$method=|QVector2D|toVector2DAffine|

/*
QVector3D toVector3D() const
*/
$method=|QVector3D|toVector3D|

/*
QVector3D toVector3DAffine() const
*/
$method=|QVector3D|toVector3DAffine|

/*
QPoint toPoint() const
*/
$method=|QPoint|toPoint|

/*
QPointF toPointF() const
*/
$method=|QPointF|toPointF|

/*
static float dotProduct(const QVector4D& v1, const QVector4D& v2)
*/
$staticMethod=|float|dotProduct|const QVector4D &,const QVector4D &

$extraMethods

#pragma ENDDUMP
