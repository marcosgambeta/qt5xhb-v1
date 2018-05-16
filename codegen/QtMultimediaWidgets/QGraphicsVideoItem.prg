%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIAOBJECT
REQUEST QPOINTF
REQUEST QSIZEF
REQUEST QRECTF
#endif

$beginClassFrom=QGraphicsObject,QMediaBindableInterface

   METHOD new
   METHOD delete
   METHOD mediaObject
   METHOD aspectRatioMode
   METHOD setAspectRatioMode
   METHOD offset
   METHOD setOffset
   METHOD size
   METHOD setSize
   METHOD nativeSize
   METHOD boundingRect
   METHOD paint

   METHOD onNativeSizeChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsVideoItem(QGraphicsItem *parent = 0)
$constructor=|new|QGraphicsItem *=0

$deleteMethod

$prototype=QMediaObject *mediaObject() const
$method=|QMediaObject *|mediaObject|

$prototype=Qt::AspectRatioMode aspectRatioMode() const
$method=|Qt::AspectRatioMode|aspectRatioMode|

$prototype=void setAspectRatioMode(Qt::AspectRatioMode mode)
$method=|void|setAspectRatioMode|Qt::AspectRatioMode

$prototype=QPointF offset() const
$method=|QPointF|offset|

$prototype=void setOffset(const QPointF &offset)
$method=|void|setOffset|const QPointF &

$prototype=QSizeF size() const
$method=|QSizeF|size|

$prototype=void setSize(const QSizeF &size)
$method=|void|setSize|const QSizeF &

$prototype=QSizeF nativeSize() const
$method=|QSizeF|nativeSize|

$prototype=QRectF boundingRect() const
$method=|QRectF|boundingRect|

$prototype=void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget = 0)
$method=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=0

$beginSignals
$signal=|nativeSizeChanged(QSizeF)
$endSignals

#pragma ENDDUMP
