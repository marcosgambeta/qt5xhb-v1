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

$prototype=QGraphicsAnchorLayout ( QGraphicsLayoutItem * parent = 0 )
$constructor=|new|QGraphicsLayoutItem *=0

$deleteMethod

$prototype=QGraphicsAnchor * addAnchor ( QGraphicsLayoutItem * firstItem, Qt::AnchorPoint firstEdge, QGraphicsLayoutItem * secondItem, Qt::AnchorPoint secondEdge )
$method=|QGraphicsAnchor *|addAnchor|QGraphicsLayoutItem *,Qt::AnchorPoint,QGraphicsLayoutItem *,Qt::AnchorPoint

$prototype=void addAnchors ( QGraphicsLayoutItem * firstItem, QGraphicsLayoutItem * secondItem, Qt::Orientations orientations = Qt::Horizontal | Qt::Vertical )
$method=|void|addAnchors|QGraphicsLayoutItem *,QGraphicsLayoutItem *,Qt::Orientations=Qt::Horizontal OR Qt::Vertical

$prototype=void addCornerAnchors ( QGraphicsLayoutItem * firstItem, Qt::Corner firstCorner, QGraphicsLayoutItem * secondItem, Qt::Corner secondCorner )
$method=|void|addCornerAnchors|QGraphicsLayoutItem *,Qt::Corner,QGraphicsLayoutItem *,Qt::Corner

$prototype=QGraphicsAnchor * anchor ( QGraphicsLayoutItem * firstItem, Qt::AnchorPoint firstEdge, QGraphicsLayoutItem * secondItem, Qt::AnchorPoint secondEdge )
$method=|QGraphicsAnchor *|anchor|QGraphicsLayoutItem *,Qt::AnchorPoint,QGraphicsLayoutItem *,Qt::AnchorPoint

$prototype=qreal horizontalSpacing () const
$method=|qreal|horizontalSpacing|

$prototype=void setHorizontalSpacing ( qreal spacing )
$method=|void|setHorizontalSpacing|qreal

$prototype=void setSpacing ( qreal spacing )
$method=|void|setSpacing|qreal

$prototype=void setVerticalSpacing ( qreal spacing )
$method=|void|setVerticalSpacing|qreal

$prototype=qreal verticalSpacing () const
$method=|qreal|verticalSpacing|

$prototype=virtual int count () const
$virtualMethod=|int|count|

$prototype=virtual void invalidate ()
$virtualMethod=|void|invalidate|

$prototype=virtual QGraphicsLayoutItem * itemAt ( int index ) const
$virtualMethod=|QGraphicsLayoutItem *|itemAt|int

$prototype=virtual void removeAt ( int index )
$virtualMethod=|void|removeAt|int

$prototype=virtual void setGeometry ( const QRectF & geom )
$virtualMethod=|void|setGeometry|const QRectF &

#pragma ENDDUMP
