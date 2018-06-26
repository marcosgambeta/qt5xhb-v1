%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

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

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QVector3D>
#include <QVector4D>

$prototype=QVector2D()
$internalConstructor=|new1|

$prototype=QVector2D(float xpos, float ypos)
$internalConstructor=|new2|float,float

$prototype=QVector2D(const QPoint& point)
$internalConstructor=|new3|const QPoint &

$prototype=QVector2D(const QPointF& point)
$internalConstructor=|new4|const QPointF &

$prototype=QVector2D(const QVector3D& vector)
$internalConstructor=|new5|const QVector3D &

$prototype=QVector2D(const QVector4D& vector)
$internalConstructor=|new6|const QVector4D &

//[1]QVector2D()
//[2]QVector2D(float xpos, float ypos)
//[3]QVector2D(const QPoint& point)
//[4]QVector2D(const QPointF& point)
//[5]QVector2D(const QVector3D& vector)
//[6]QVector2D(const QVector4D& vector)

HB_FUNC_STATIC( QVECTOR2D_NEW )
{
  if( ISNUMPAR(0) )
  {
    QVector2D_new1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QVector2D_new2();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QVector2D_new3();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QVector2D_new4();
  }
  else if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    QVector2D_new5();
  }
  else if( ISNUMPAR(1) && ISQVECTOR4D(1) )
  {
    QVector2D_new6();
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

$prototype=void setX(float x)
$method=|void|setX|float

$prototype=void setY(float y)
$method=|void|setY|float

$prototype=float length() const
$method=|float|length|

$prototype=float lengthSquared() const
$method=|float|lengthSquared|

$prototype=QVector2D normalized() const
$method=|QVector2D|normalized|

$prototype=void normalize()
$method=|void|normalize|

$prototype=float distanceToPoint(const QVector2D &point) const
$method=|float|distanceToPoint|const QVector2D &

$prototype=float distanceToLine(const QVector2D& point, const QVector2D& direction) const
$method=|float|distanceToLine|const QVector2D &,const QVector2D &

$prototype=QVector3D toVector3D() const
$method=|QVector3D|toVector3D|

$prototype=QVector4D toVector4D() const
$method=|QVector4D|toVector4D|

$prototype=QPoint toPoint() const
$method=|QPoint|toPoint|

$prototype=QPointF toPointF() const
$method=|QPointF|toPointF|

$prototype=static float dotProduct(const QVector2D& v1, const QVector2D& v2)
$staticMethod=|float|dotProduct|const QVector2D &,const QVector2D &

$extraMethods

#pragma ENDDUMP
