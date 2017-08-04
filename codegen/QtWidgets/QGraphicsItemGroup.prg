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

/*
QGraphicsItemGroup ( QGraphicsItem * parent = 0 )
*/
$constructor=|new|QGraphicsItem *=0

$deleteMethod

/*
void addToGroup ( QGraphicsItem * item )
*/
$method=|void|addToGroup|QGraphicsItem *

/*
void removeFromGroup ( QGraphicsItem * item )
*/
$method=|void|removeFromGroup|QGraphicsItem *

/*
virtual QRectF boundingRect () const
*/
$method=|QRectF|boundingRect|

/*
virtual bool isObscuredBy ( const QGraphicsItem * item ) const
*/
$method=|bool|isObscuredBy|const QGraphicsItem *

/*
virtual QPainterPath opaqueArea () const
*/
$method=|QPainterPath|opaqueArea|

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
$method=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=0

/*
virtual int type () const
*/
$method=|int|type|

#pragma ENDDUMP
