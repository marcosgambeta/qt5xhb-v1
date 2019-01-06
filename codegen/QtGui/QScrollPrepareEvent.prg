%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QScrollPrepareEvent(const QPointF &startPos)
$constructor=|new|const QPointF &

$deleteMethod

$prototype=QPointF startPos() const
$method=|QPointF|startPos|

$prototype=QSizeF viewportSize() const
$method=|QSizeF|viewportSize|

$prototype=QRectF contentPosRange() const
$method=|QRectF|contentPosRange|

$prototype=QPointF contentPos() const
$method=|QPointF|contentPos|

$prototype=void setViewportSize(const QSizeF &size)
$method=|void|setViewportSize|const QSizeF &

$prototype=void setContentPosRange(const QRectF &rect)
$method=|void|setContentPosRange|const QRectF &

$prototype=void setContentPos(const QPointF &pos)
$method=|void|setContentPos|const QPointF &

#pragma ENDDUMP
