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

#include <QtGui/QFont>

$prototype=QGraphicsSimpleTextItem ( QGraphicsItem * parent = 0 )
$internalConstructor=|new1|QGraphicsItem *=0

$prototype=QGraphicsSimpleTextItem ( const QString & text, QGraphicsItem * parent = 0 )
$internalConstructor=|new2|const QString &,QGraphicsItem *=0

/*
[1]QGraphicsSimpleTextItem ( QGraphicsItem * parent = 0 )
[2]QGraphicsSimpleTextItem ( const QString & text, QGraphicsItem * parent = 0 )
*/

HB_FUNC_STATIC( QGRAPHICSSIMPLETEXTITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsSimpleTextItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsSimpleTextItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QFont font () const
$method=|QFont|font|

$prototype=void setFont ( const QFont & font )
$method=|void|setFont|const QFont &

$prototype=void setText ( const QString & text )
$method=|void|setText|const QString &

$prototype=QString text () const
$method=|QString|text|

$prototype=virtual QRectF boundingRect () const
$virtualMethod=|QRectF|boundingRect|

$prototype=virtual bool contains ( const QPointF & point ) const
$virtualMethod=|bool|contains|const QPointF &

$prototype=virtual bool isObscuredBy ( const QGraphicsItem * item ) const
$virtualMethod=|bool|isObscuredBy|const QGraphicsItem *

$prototype=virtual QPainterPath opaqueArea () const
$virtualMethod=|QPainterPath|opaqueArea|

$prototype=virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget )
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *

$prototype=virtual QPainterPath shape () const
$virtualMethod=|QPainterPath|shape|

$prototype=virtual int type () const
$virtualMethod=|int|type|

#pragma ENDDUMP
