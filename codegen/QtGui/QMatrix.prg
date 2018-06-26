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
   METHOD setMatrix
   METHOD m11
   METHOD m12
   METHOD m21
   METHOD m22
   METHOD dx
   METHOD dy
   METHOD map1
   METHOD map2
   METHOD map
   METHOD mapRect
   METHOD mapToPolygon
   METHOD reset
   METHOD isIdentity
   METHOD translate
   METHOD scale
   METHOD shear
   METHOD rotate
   METHOD isInvertible
   METHOD determinant
   METHOD inverted

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QPainterPath>

$prototype=QMatrix(Qt::Initialization)
$internalConstructor=|new1|Qt::Initialization

$prototype=QMatrix()
$internalConstructor=|new2|

$prototype=QMatrix(qreal m11, qreal m12, qreal m21, qreal m22,qreal dx, qreal dy)
$internalConstructor=|new3|qreal,qreal,qreal,qreal,qreal,qreal

$prototype=QMatrix(const QMatrix &matrix)
$internalConstructor=|new4|const QMatrix &

%% TODO: verificar [1]
//[1]QMatrix(Qt::Initialization)
//[2]QMatrix()
//[3]QMatrix(qreal m11, qreal m12, qreal m21, qreal m22,qreal dx, qreal dy)
//[4]QMatrix(const QMatrix &matrix)

HB_FUNC_STATIC( QMATRIX_NEW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QMatrix_new1();
  }
  else if( ISNUMPAR(0) )
  {
    QMatrix_new2();
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    QMatrix_new3();
  }
  else if( ISNUMPAR(1) && ISQMATRIX(1) )
  {
    QMatrix_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void setMatrix(qreal m11, qreal m12, qreal m21, qreal m22,qreal dx, qreal dy)
$method=|void|setMatrix|qreal,qreal,qreal,qreal,qreal,qreal

$prototype=qreal m11() const
$method=|qreal|m11|

$prototype=qreal m12() const
$method=|qreal|m12|

$prototype=qreal m21() const
$method=|qreal|m21|

$prototype=qreal m22() const
$method=|qreal|m22|

$prototype=qreal dx() const
$method=|qreal|dx|

$prototype=qreal dy() const
$method=|qreal|dy|

$prototype=void map(int x, int y, int *tx, int *ty) const
$method=|void|map,map1|int,int,int *,int *

$prototype=void map(qreal x, qreal y, qreal *tx, qreal *ty) const
$method=|void|map,map2|qreal,qreal,qreal *,qreal *

$prototype=QPoint map(const QPoint &p) const
$internalMethod=|QPoint|map,map3|const QPoint &

$prototype=QPointF map(const QPointF&p) const
$internalMethod=|QPointF|map,map4|const QPointF &

$prototype=QLine map(const QLine &l) const
$internalMethod=|QLine|map,map5|const QLine &

$prototype=QLineF map(const QLineF &l) const
$internalMethod=|QLineF|map,map6|const QLineF &

$prototype=QPolygon map(const QPolygon &a) const
$internalMethod=|QPolygon|map,map7|const QPolygon &

$prototype=QPolygonF map(const QPolygonF &a) const
$internalMethod=|QPolygonF|map,map8|const QPolygonF &

$prototype=QRegion map(const QRegion &r) const
$internalMethod=|QRegion|map,map9|const QRegion &

$prototype=QPainterPath map(const QPainterPath &p) const
$internalMethod=|QPainterPath|map,map10|const QPainterPath &

//[1]void map(int x, int y, int *tx, int *ty) const
//[2]void map(qreal x, qreal y, qreal *tx, qreal *ty) const
//[3]QPoint map(const QPoint &p) const
//[4]QPointF map(const QPointF&p) const
//[5]QLine map(const QLine &l) const
//[6]QLineF map(const QLineF &l) const
//[7]QPolygon map(const QPolygon &a) const
//[8]QPolygonF map(const QPolygonF &a) const
//[9]QRegion map(const QRegion &r) const
//[10]QPainterPath map(const QPainterPath &p) const

%% TODO: conflito entre [1] e [2]
HB_FUNC_STATIC( QMATRIX_MAP )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QMATRIX_MAP1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QMATRIX_MAP2 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QMatrix_map3();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QMatrix_map4();
  }
  else if( ISNUMPAR(1) && ISQLINE(1) )
  {
    QMatrix_map5();
  }
  else if( ISNUMPAR(1) && ISQLINEF(1) )
  {
    QMatrix_map6();
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    QMatrix_map7();
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    QMatrix_map8();
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QMatrix_map9();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QMatrix_map10();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QRect mapRect(const QRect &) const
$internalMethod=|QRect|mapRect,mapRect1|const QRect &

$prototype=QRectF mapRect(const QRectF &) const
$internalMethod=|QRectF|mapRect,mapRect2|const QRectF &

//[1]QRect mapRect(const QRect &) const
//[2]QRectF mapRect(const QRectF &) const

HB_FUNC_STATIC( QMATRIX_MAPRECT )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QMatrix_mapRect1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QMatrix_mapRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QPolygon mapToPolygon(const QRect &r) const
$method=|QPolygon|mapToPolygon|const QRect &

$prototype=void reset()
$method=|void|reset|

$prototype=bool isIdentity() const
$method=|bool|isIdentity|

$prototype=QMatrix &translate(qreal dx, qreal dy)
$method=|QMatrix &|translate|qreal,qreal

$prototype=QMatrix &scale(qreal sx, qreal sy)
$method=|QMatrix &|scale|qreal,qreal

$prototype=QMatrix &shear(qreal sh, qreal sv)
$method=|QMatrix &|shear|qreal,qreal

$prototype=QMatrix &rotate(qreal a)
$method=|QMatrix &|rotate|qreal

$prototype=bool isInvertible() const
$method=|bool|isInvertible|

$prototype=qreal determinant() const
$method=|qreal|determinant|

$prototype=QMatrix inverted(bool *invertible = 0) const
$method=|QMatrix|inverted|bool *=0

$extraMethods

#pragma ENDDUMP
