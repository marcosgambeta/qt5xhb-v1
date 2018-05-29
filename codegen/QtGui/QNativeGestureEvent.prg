%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QInputEvent

   METHOD new
   METHOD delete
   METHOD gestureType
   METHOD value
   METHOD pos
   METHOD globalPos
   METHOD localPos
   METHOD windowPos
   METHOD screenPos

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QNativeGestureEvent(Qt::NativeGestureType type, const QPointF &localPos, const QPointF &windowPos,const QPointF &screenPos, qreal value, ulong sequenceId, quint64 intArgument)
$constructor=|new|Qt::NativeGestureType,const QPointF &,const QPointF &,const QPointF &,qreal,ulong,quint64

$deleteMethod

$prototype=Qt::NativeGestureType gestureType() const
$method=|Qt::NativeGestureType|gestureType|

$prototype=qreal value() const
$method=|qreal|value|

$prototype=const QPoint pos() const
$method=|const QPoint|pos|

$prototype=const QPoint globalPos() const
$method=|const QPoint|globalPos|

$prototype=const QPointF &localPos() const
$method=|const QPointF &|localPos|

$prototype=const QPointF &windowPos() const
$method=|const QPointF &|windowPos|

$prototype=const QPointF &screenPos() const
$method=|const QPointF &|screenPos|

#pragma ENDDUMP
