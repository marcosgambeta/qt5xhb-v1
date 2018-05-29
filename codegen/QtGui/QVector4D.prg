%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

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

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QVector2D>
#include <QVector3D>

$prototype=QVector4D()
$internalConstructor=|new1|

$prototype=QVector4D(float xpos, float ypos, float zpos, float wpos)
$internalConstructor=|new2|float,float,float,float

$prototype=QVector4D(const QPoint& point)
$internalConstructor=|new3|const QPoint &

$prototype=QVector4D(const QPointF& point)
$internalConstructor=|new4|const QPointF &

$prototype=QVector4D(const QVector2D& vector)
$internalConstructor=|new5|const QVector2D &

$prototype=QVector4D(const QVector2D& vector, float zpos, float wpos)
$internalConstructor=|new6|const QVector2D &,float,float

$prototype=QVector4D(const QVector3D& vector)
$internalConstructor=|new7|const QVector3D &

$prototype=QVector4D(const QVector3D& vector, float wpos)
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

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=float x() const
$method=|float|x|

$prototype=float y() const
$method=|float|y|

$prototype=float z() const
$method=|float|z|

$prototype=float w() const
$method=|float|w|

$prototype=void setX(float x)
$method=|void|setX|float

$prototype=void setY(float y)
$method=|void|setY|float

$prototype=void setZ(float z)
$method=|void|setZ|float

$prototype=void setW(float w)
$method=|void|setW|float

$prototype=float length() const
$method=|float|length|

$prototype=float lengthSquared() const
$method=|float|lengthSquared|

$prototype=QVector4D normalized() const
$method=|QVector4D|normalized|

$prototype=void normalize()
$method=|void|normalize|

$prototype=QVector2D toVector2D() const
$method=|QVector2D|toVector2D|

$prototype=QVector2D toVector2DAffine() const
$method=|QVector2D|toVector2DAffine|

$prototype=QVector3D toVector3D() const
$method=|QVector3D|toVector3D|

$prototype=QVector3D toVector3DAffine() const
$method=|QVector3D|toVector3DAffine|

$prototype=QPoint toPoint() const
$method=|QPoint|toPoint|

$prototype=QPointF toPointF() const
$method=|QPointF|toPointF|

$prototype=static float dotProduct(const QVector4D& v1, const QVector4D& v2)
$staticMethod=|float|dotProduct|const QVector4D &,const QVector4D &

$extraMethods

#pragma ENDDUMP
