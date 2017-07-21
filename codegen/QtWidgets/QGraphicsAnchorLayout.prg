$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGRAPHICSANCHOR
REQUEST QGRAPHICSLAYOUTITEM
#endif

CLASS QGraphicsAnchorLayout INHERIT QGraphicsLayout

   METHOD new
   METHOD delete
   METHOD addAnchor
   METHOD addAnchors
   METHOD addCornerAnchors
   METHOD anchor
   METHOD horizontalSpacing
   METHOD setHorizontalSpacing
   METHOD setSpacing
   METHOD setVerticalSpacing
   METHOD verticalSpacing
   METHOD count
   METHOD invalidate
   METHOD itemAt
   METHOD removeAt
   METHOD setGeometry

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QGraphicsAnchorLayout ( QGraphicsLayoutItem * parent = 0 )
*/
$constructor=|new|QGraphicsLayoutItem *=0

$deleteMethod

/*
QGraphicsAnchor * addAnchor ( QGraphicsLayoutItem * firstItem, Qt::AnchorPoint firstEdge, QGraphicsLayoutItem * secondItem, Qt::AnchorPoint secondEdge )
*/
$method=|QGraphicsAnchor *|addAnchor|QGraphicsLayoutItem *,Qt::AnchorPoint,QGraphicsLayoutItem *,Qt::AnchorPoint

/*
void addAnchors ( QGraphicsLayoutItem * firstItem, QGraphicsLayoutItem * secondItem, Qt::Orientations orientations = Qt::Horizontal | Qt::Vertical )
*/
HB_FUNC_STATIC( QGRAPHICSANCHORLAYOUT_ADDANCHORS )
{
  QGraphicsAnchorLayout * obj = (QGraphicsAnchorLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par3 = ISNIL(3)? (int) Qt::Horizontal | Qt::Vertical : hb_parni(3);
    obj->addAnchors ( PQGRAPHICSLAYOUTITEM(1), PQGRAPHICSLAYOUTITEM(2), (Qt::Orientations) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addCornerAnchors ( QGraphicsLayoutItem * firstItem, Qt::Corner firstCorner, QGraphicsLayoutItem * secondItem, Qt::Corner secondCorner )
*/
$method=|void|addCornerAnchors|QGraphicsLayoutItem *,Qt::Corner,QGraphicsLayoutItem *,Qt::Corner

/*
QGraphicsAnchor * anchor ( QGraphicsLayoutItem * firstItem, Qt::AnchorPoint firstEdge, QGraphicsLayoutItem * secondItem, Qt::AnchorPoint secondEdge )
*/
$method=|QGraphicsAnchor *|anchor|QGraphicsLayoutItem *,Qt::AnchorPoint,QGraphicsLayoutItem *,Qt::AnchorPoint

/*
qreal horizontalSpacing () const
*/
$method=|qreal|horizontalSpacing|

/*
void setHorizontalSpacing ( qreal spacing )
*/
$method=|void|setHorizontalSpacing|qreal

/*
void setSpacing ( qreal spacing )
*/
$method=|void|setSpacing|qreal

/*
void setVerticalSpacing ( qreal spacing )
*/
$method=|void|setVerticalSpacing|qreal

/*
qreal verticalSpacing () const
*/
$method=|qreal|verticalSpacing|

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
%method=|QGraphicsLayoutItem *|itemAt|int

/*
virtual void removeAt ( int index )
*/
$method=|void|removeAt|int

/*
virtual void setGeometry ( const QRectF & geom )
*/
$method=|void|setGeometry|const QRectF &

#pragma ENDDUMP
