$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QNativeGestureEvent INHERIT QInputEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD gestureType
   METHOD value
   METHOD pos
   METHOD globalPos
   METHOD localPos
   METHOD windowPos
   METHOD screenPos

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QNativeGestureEvent(Qt::NativeGestureType type, const QPointF &localPos, const QPointF &windowPos,const QPointF &screenPos, qreal value, ulong sequenceId, quint64 intArgument)
*/
$constructor=|new|Qt::NativeGestureType,const QPointF &,const QPointF &,const QPointF &,qreal,ulong,quint64

$deleteMethod

/*
Qt::NativeGestureType gestureType() const
*/
$method=|Qt::NativeGestureType|gestureType|

/*
qreal value() const
*/
$method=|qreal|value|

/*
const QPoint pos() const
*/
$method=|const QPoint|pos|

/*
const QPoint globalPos() const
*/
$method=|const QPoint|globalPos|

/*
const QPointF &localPos() const
*/
$method=|const QPointF &|localPos|

/*
const QPointF &windowPos() const
*/
$method=|const QPointF &|windowPos|

/*
const QPointF &screenPos() const
*/
$method=|const QPointF &|screenPos|

#pragma ENDDUMP
