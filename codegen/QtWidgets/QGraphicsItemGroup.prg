%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsItem

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsItemGroup ( QGraphicsItem * parent = 0 )
$constructor=|new|QGraphicsItem *=0

$deleteMethod

$prototype=void addToGroup ( QGraphicsItem * item )
$method=|void|addToGroup|QGraphicsItem *

$prototype=void removeFromGroup ( QGraphicsItem * item )
$method=|void|removeFromGroup|QGraphicsItem *

$prototype=virtual QRectF boundingRect () const
$virtualMethod=|QRectF|boundingRect|

$prototype=virtual bool isObscuredBy ( const QGraphicsItem * item ) const
$virtualMethod=|bool|isObscuredBy|const QGraphicsItem *

$prototype=virtual QPainterPath opaqueArea () const
$virtualMethod=|QPainterPath|opaqueArea|

$prototype=virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=0

$prototype=virtual int type () const
$virtualMethod=|int|type|

#pragma ENDDUMP
