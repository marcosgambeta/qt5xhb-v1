%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QVector2D>
#include <QVector4D>

$prototype=QVector3D()
$internalConstructor=|new1|

$prototype=QVector3D(float xpos, float ypos, float zpos)
$internalConstructor=|new2|float,float,float

$prototype=QVector3D(const QPoint& point)
$internalConstructor=|new3|const QPoint &

$prototype=QVector3D(const QPointF& point)
$internalConstructor=|new4|const QPointF &

$prototype=QVector3D(const QVector2D& vector)
$internalConstructor=|new5|const QVector2D &

$prototype=QVector3D(const QVector2D& vector, float zpos)
$internalConstructor=|new6|const QVector2D &,float

$prototype=QVector3D(const QVector4D& vector)
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

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=float x() const
$method=|float|x|

$prototype=float y() const
$method=|float|y|

$prototype=float z() const
$method=|float|z|

$prototype=void setX(float x)
$method=|void|setX|float

$prototype=void setY(float y)
$method=|void|setY|float

$prototype=void setZ(float z)
$method=|void|setZ|float

$prototype=float length() const
$method=|float|length|

$prototype=float lengthSquared() const
$method=|float|lengthSquared|

$prototype=QVector3D normalized() const
$method=|QVector3D|normalized|

$prototype=void normalize()
$method=|void|normalize|

$prototype=float distanceToPoint(const QVector3D& point) const
$method=|float|distanceToPoint|const QVector3D &

$prototype=float distanceToPlane(const QVector3D& plane, const QVector3D& normal) const
$internalMethod=|float|distanceToPlane,distanceToPlane1|const QVector3D &,const QVector3D &

$prototype=float distanceToPlane(const QVector3D& plane1, const QVector3D& plane2, const QVector3D& plane3) const
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

$prototype=float distanceToLine(const QVector3D& point, const QVector3D& direction) const
$method=|float|distanceToLine|const QVector3D &,const QVector3D &

$prototype=QVector2D toVector2D() const
$method=|QVector2D|toVector2D|

$prototype=QVector4D toVector4D() const
$method=|QVector4D|toVector4D|

$prototype=QPoint toPoint() const
$method=|QPoint|toPoint|

$prototype=QPointF toPointF() const
$method=|QPointF|toPointF|

$prototype=static float dotProduct(const QVector3D& v1, const QVector3D& v2)
$staticMethod=|float|dotProduct|const QVector3D &,const QVector3D &

$prototype=static QVector3D crossProduct(const QVector3D& v1, const QVector3D& v2)
$staticMethod=|QVector3D|crossProduct|const QVector3D &,const QVector3D &

$prototype=static QVector3D normal(const QVector3D& v1, const QVector3D& v2)
$internalStaticMethod=|QVector3D|normal,normal1|const QVector3D &,const QVector3D &

$prototype=static QVector3D normal(const QVector3D& v1, const QVector3D& v2, const QVector3D& v3)
$internalStaticMethod=|QVector3D|normal,normal2|const QVector3D &,const QVector3D &,const QVector3D &

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
