$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGRAPHICSLAYOUTITEM
REQUEST QSIZEF
#endif

CLASS QGraphicsLinearLayout INHERIT QGraphicsLayout

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

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QGraphicsLinearLayout ( QGraphicsLayoutItem * parent = 0 )
*/
$internalConstructor=|new1|QGraphicsLayoutItem *=0

/*
QGraphicsLinearLayout ( Qt::Orientation orientation, QGraphicsLayoutItem * parent = 0 )
*/
$internalConstructor=|new|Qt::Orientation,QGraphicsLayoutItem *=0

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

/*
void addItem ( QGraphicsLayoutItem * item )
*/
$method=|void|addItem|QGraphicsLayoutItem *

/*
void addStretch ( int stretch = 1 )
*/
$method=|void|addStretch|int=1

/*
Qt::Alignment alignment ( QGraphicsLayoutItem * item ) const
*/
$method=|Qt::Alignment|alignment|QGraphicsLayoutItem *

/*
void insertItem ( int index, QGraphicsLayoutItem * item )
*/
$method=|void|insertItem|int,QGraphicsLayoutItem *

/*
void insertStretch ( int index, int stretch = 1 )
*/
$method=|void|insertStretch|int,int=1

/*
qreal itemSpacing ( int index ) const
*/
$method=|qreal|itemSpacing|int

/*
Qt::Orientation orientation () const
*/
$method=|Qt::Orientation|orientation|

/*
void removeItem ( QGraphicsLayoutItem * item )
*/
$method=|void|removeItem|QGraphicsLayoutItem *

/*
void setAlignment ( QGraphicsLayoutItem * item, Qt::Alignment alignment )
*/
$method=|void|setAlignment|QGraphicsLayoutItem *,Qt::Alignment

/*
void setItemSpacing ( int index, qreal spacing )
*/
$method=|void|setItemSpacing|int,qreal

/*
void setOrientation ( Qt::Orientation orientation )
*/
$method=|void|setOrientation|Qt::Orientation

/*
void setSpacing ( qreal spacing )
*/
$method=|void|setSpacing|qreal

/*
void setStretchFactor ( QGraphicsLayoutItem * item, int stretch )
*/
$method=|void|setStretchFactor|QGraphicsLayoutItem *,int

/*
qreal spacing () const
*/
$method=|qreal|spacing|

/*
int stretchFactor ( QGraphicsLayoutItem * item ) const
*/
$method=|int|stretchFactor|QGraphicsLayoutItem *

/*
virtual int count () const
*/
$method=|int|count|

/*
virtual void invalidate ()
*/
$method=|void|invalidate|

/*
virtual QGraphicsLayoutItem * itemAt ( int index ) const
*/
$method=|QGraphicsLayoutItem *|itemAt|int

/*
virtual void removeAt ( int index )
*/
$method=|void|removeAt|int

/*
virtual void setGeometry ( const QRectF & rect )
*/
$method=|void|setGeometry|const QRectF &

/*
virtual QSizeF sizeHint ( Qt::SizeHint which, const QSizeF & constraint = QSizeF() ) const
*/
$method=|QSizeF|sizeHint|Qt::SizeHint,const QSizeF &=QSizeF()

#pragma ENDDUMP
