$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsItemGroup INHERIT QGraphicsItem

   METHOD new
   METHOD delete
   METHOD addToGroup
   METHOD removeFromGroup
   METHOD boundingRect
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

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
$method=|QRectF|boundingRect|

$prototype=virtual bool isObscuredBy ( const QGraphicsItem * item ) const
$method=|bool|isObscuredBy|const QGraphicsItem *

$prototype=virtual QPainterPath opaqueArea () const
$method=|QPainterPath|opaqueArea|

$prototype=virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
$method=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=0

$prototype=virtual int type () const
$method=|int|type|

#pragma ENDDUMP
