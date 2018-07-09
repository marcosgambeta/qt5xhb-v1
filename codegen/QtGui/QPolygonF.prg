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

$prototype=QPolygonF()
$internalConstructor=|new1|

$prototype=QPolygonF(int size)
$internalConstructor=|new2|int

$prototype=QPolygonF(const QPolygonF &a)
$internalConstructor=|new3|const QPolygonF &

$prototype=QPolygonF(const QVector<QPointF> &v)
$internalConstructor=|new4|const QVector<QPointF> &

$prototype=QPolygonF(const QRectF &r)
$internalConstructor=|new5|const QRectF &

$prototype=QPolygonF(const QPolygon &a)
$internalConstructor=|new6|const QPolygon &

//[1]QPolygonF()
//[2]QPolygonF(int size)
//[3]QPolygonF(const QPolygonF &a)
//[4]QPolygonF(const QVector<QPointF> &v)
//[5]QPolygonF(const QRectF &r)
//[6]QPolygonF(const QPolygon &a)

HB_FUNC_STATIC( QPOLYGONF_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPolygonF_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPolygonF_new2();
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    QPolygonF_new3();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QPolygonF_new4();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QPolygonF_new5();
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    QPolygonF_new6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void swap(QPolygonF &other)
$method=|void|swap|QPolygonF &

$prototype=void translate(qreal dx, qreal dy)
$internalMethod=|void|translate,translate1|qreal,qreal

$prototype=void translate(const QPointF &offset)
$internalMethod=|void|translate,translate2|const QPointF &

//[1]void translate(qreal dx, qreal dy)
//[2]void translate(const QPointF &offset)

HB_FUNC_STATIC( QPOLYGONF_TRANSLATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPolygonF_translate1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QPolygonF_translate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QPolygonF translated(qreal dx, qreal dy) const
$internalMethod=|QPolygonF|translated,translated1|qreal,qreal

$prototype=QPolygonF translated(const QPointF &offset) const
$internalMethod=|QPolygonF|translated,translated2|const QPointF &

//[1]QPolygonF translated(qreal dx, qreal dy) const
//[2]QPolygonF translated(const QPointF &offset) const

HB_FUNC_STATIC( QPOLYGONF_TRANSLATED )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPolygonF_translated1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QPolygonF_translated2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QPolygon toPolygon() const
$method=|QPolygon|toPolygon|

$prototype=bool isClosed() const
$method=|bool|isClosed|

$prototype=QRectF boundingRect() const
$method=|QRectF|boundingRect|

$prototype=bool containsPoint(const QPointF &pt, Qt::FillRule fillRule) const
$method=|bool|containsPoint|const QPointF &,Qt::FillRule

$prototype=QPolygonF united(const QPolygonF &r) const
$method=|QPolygonF|united|const QPolygonF &

$prototype=QPolygonF intersected(const QPolygonF &r) const
$method=|QPolygonF|intersected|const QPolygonF &

$prototype=QPolygonF subtracted(const QPolygonF &r) const
$method=|QPolygonF|subtracted|const QPolygonF &

$extraMethods

#pragma ENDDUMP
