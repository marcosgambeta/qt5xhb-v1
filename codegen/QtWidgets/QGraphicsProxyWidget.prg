$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QWIDGET
#endif

CLASS QGraphicsProxyWidget INHERIT QGraphicsWidget

   METHOD new
   METHOD delete
   METHOD createProxyForChildWidget
   METHOD setWidget
   METHOD subWidgetRect
   METHOD widget
   METHOD paint
   METHOD setGeometry
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QGraphicsProxyWidget ( QGraphicsItem * parent = 0, Qt::WindowFlags wFlags = 0 )
*/
$constructor=|new|QGraphicsItem *=0,Qt::WindowFlags=0

$deleteMethod

/*
QGraphicsProxyWidget * createProxyForChildWidget ( QWidget * child )
*/
$method=|QGraphicsProxyWidget *|createProxyForChildWidget|QWidget *

/*
void setWidget ( QWidget * widget )
*/
$method=|void|setWidget|QWidget *

/*
QRectF subWidgetRect ( const QWidget * widget ) const
*/
$method=|QRectF|subWidgetRect|const QWidget *

/*
QWidget * widget () const
*/
$method=|QWidget *|widget|

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget )
*/
$method=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *

/*
virtual void setGeometry ( const QRectF & rect )
*/
$method=|void|setGeometry|const QRectF &

/*
virtual int type () const
*/
$method=|int|type|

#pragma ENDDUMP
