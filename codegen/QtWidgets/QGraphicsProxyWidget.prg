%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QWIDGET
#endif

$beginClassFrom=QGraphicsWidget

   METHOD new
   METHOD delete
   METHOD createProxyForChildWidget
   METHOD setWidget
   METHOD subWidgetRect
   METHOD widget
   METHOD paint
   METHOD setGeometry
   METHOD type

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsProxyWidget ( QGraphicsItem * parent = 0, Qt::WindowFlags wFlags = 0 )
$constructor=|new|QGraphicsItem *=0,Qt::WindowFlags=0

$deleteMethod

$prototype=QGraphicsProxyWidget * createProxyForChildWidget ( QWidget * child )
$method=|QGraphicsProxyWidget *|createProxyForChildWidget|QWidget *

$prototype=void setWidget ( QWidget * widget )
$method=|void|setWidget|QWidget *

$prototype=QRectF subWidgetRect ( const QWidget * widget ) const
$method=|QRectF|subWidgetRect|const QWidget *

$prototype=QWidget * widget () const
$method=|QWidget *|widget|

$prototype=virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget )
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *

$prototype=virtual void setGeometry ( const QRectF & rect )
$virtualMethod=|void|setGeometry|const QRectF &

$prototype=virtual int type () const
$virtualMethod=|int|type|

#pragma ENDDUMP
