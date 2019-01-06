%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimediaWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsObject,QMediaBindableInterface

$addMethods

$addSignals

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
