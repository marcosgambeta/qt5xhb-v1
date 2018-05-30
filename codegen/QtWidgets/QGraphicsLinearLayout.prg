%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsLayout

   METHOD new
   METHOD delete
   METHOD addItem
   METHOD addStretch
   METHOD alignment
   METHOD insertItem
   METHOD insertStretch
   METHOD itemSpacing
   METHOD orientation
   METHOD removeItem
   METHOD setAlignment
   METHOD setItemSpacing
   METHOD setOrientation
   METHOD setSpacing
   METHOD setStretchFactor
   METHOD spacing
   METHOD stretchFactor
   METHOD count
   METHOD invalidate
   METHOD itemAt
   METHOD removeAt
   METHOD setGeometry
   METHOD sizeHint

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsLinearLayout ( QGraphicsLayoutItem * parent = 0 )
$internalConstructor=|new1|QGraphicsLayoutItem *=0

$prototype=QGraphicsLinearLayout ( Qt::Orientation orientation, QGraphicsLayoutItem * parent = 0 )
$internalConstructor=|new2|Qt::Orientation,QGraphicsLayoutItem *=0

//[1]QGraphicsLinearLayout ( QGraphicsLayoutItem * parent = 0 )
//[2]QGraphicsLinearLayout ( Qt::Orientation orientation, QGraphicsLayoutItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSLAYOUTITEM(1)||ISNIL(1)) )
  {
    QGraphicsLinearLayout_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQGRAPHICSLAYOUTITEM(2)||ISNIL(2)) )
  {
    QGraphicsLinearLayout_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void addItem ( QGraphicsLayoutItem * item )
$method=|void|addItem|QGraphicsLayoutItem *

$prototype=void addStretch ( int stretch = 1 )
$method=|void|addStretch|int=1

$prototype=Qt::Alignment alignment ( QGraphicsLayoutItem * item ) const
$method=|Qt::Alignment|alignment|QGraphicsLayoutItem *

$prototype=void insertItem ( int index, QGraphicsLayoutItem * item )
$method=|void|insertItem|int,QGraphicsLayoutItem *

$prototype=void insertStretch ( int index, int stretch = 1 )
$method=|void|insertStretch|int,int=1

$prototype=qreal itemSpacing ( int index ) const
$method=|qreal|itemSpacing|int

$prototype=Qt::Orientation orientation () const
$method=|Qt::Orientation|orientation|

$prototype=void removeItem ( QGraphicsLayoutItem * item )
$method=|void|removeItem|QGraphicsLayoutItem *

$prototype=void setAlignment ( QGraphicsLayoutItem * item, Qt::Alignment alignment )
$method=|void|setAlignment|QGraphicsLayoutItem *,Qt::Alignment

$prototype=void setItemSpacing ( int index, qreal spacing )
$method=|void|setItemSpacing|int,qreal

$prototype=void setOrientation ( Qt::Orientation orientation )
$method=|void|setOrientation|Qt::Orientation

$prototype=void setSpacing ( qreal spacing )
$method=|void|setSpacing|qreal

$prototype=void setStretchFactor ( QGraphicsLayoutItem * item, int stretch )
$method=|void|setStretchFactor|QGraphicsLayoutItem *,int

$prototype=qreal spacing () const
$method=|qreal|spacing|

$prototype=int stretchFactor ( QGraphicsLayoutItem * item ) const
$method=|int|stretchFactor|QGraphicsLayoutItem *

$prototype=virtual int count () const
$virtualMethod=|int|count|

$prototype=virtual void invalidate ()
$virtualMethod=|void|invalidate|

$prototype=virtual QGraphicsLayoutItem * itemAt ( int index ) const
$virtualMethod=|QGraphicsLayoutItem *|itemAt|int

$prototype=virtual void removeAt ( int index )
$virtualMethod=|void|removeAt|int

$prototype=virtual void setGeometry ( const QRectF & rect )
$virtualMethod=|void|setGeometry|const QRectF &

$prototype=virtual QSizeF sizeHint ( Qt::SizeHint which, const QSizeF & constraint = QSizeF() ) const
$virtualMethod=|QSizeF|sizeHint|Qt::SizeHint,const QSizeF &=QSizeF()

#pragma ENDDUMP
