%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractGraphicsShapeItem

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsPolygonItem ( QGraphicsItem * parent = 0 )
$internalConstructor=|new1|QGraphicsItem *=0

$prototype=QGraphicsPolygonItem ( const QPolygonF & polygon, QGraphicsItem * parent = 0 )
$internalConstructor=|new2|const QPolygonF &,QGraphicsItem *=0

/*
[1]QGraphicsPolygonItem ( QGraphicsItem * parent = 0 )
[2]QGraphicsPolygonItem ( const QPolygonF & polygon, QGraphicsItem * parent = 0 )
*/

HB_FUNC_STATIC( QGRAPHICSPOLYGONITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsPolygonItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISQPOLYGONF(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsPolygonItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=Qt::FillRule fillRule () const
$method=|Qt::FillRule|fillRule|

$prototype=QPolygonF polygon () const
$method=|QPolygonF|polygon|

$prototype=void setFillRule ( Qt::FillRule rule )
$method=|void|setFillRule|Qt::FillRule

$prototype=void setPolygon ( const QPolygonF & polygon )
$method=|void|setPolygon|const QPolygonF &

$prototype=virtual QRectF boundingRect () const
$virtualMethod=|QRectF|boundingRect|

$prototype=virtual bool contains ( const QPointF & point ) const
$virtualMethod=|bool|contains|const QPointF &

$prototype=virtual bool isObscuredBy ( const QGraphicsItem * item ) const
$virtualMethod=|bool|isObscuredBy|const QGraphicsItem *

$prototype=virtual QPainterPath opaqueArea () const
$virtualMethod=|QPainterPath|opaqueArea|

$prototype=virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=0

$prototype=virtual QPainterPath shape () const
$virtualMethod=|QPainterPath|shape|

$prototype=virtual int type () const
$virtualMethod=|int|type|

#pragma ENDDUMP
