%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsLayout

$addMethods

$endClass

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
