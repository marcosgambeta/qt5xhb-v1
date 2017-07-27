$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QPOINTF
#endif

CLASS QEnterEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD pos
   METHOD globalPos
   METHOD x
   METHOD y
   METHOD globalX
   METHOD globalY
   METHOD localPos
   METHOD windowPos
   METHOD screenPos

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QEnterEvent(const QPointF &localPos, const QPointF &windowPos, const QPointF &screenPos)
*/
$constructor=|new|const QPointF &,const QPointF &,const QPointF &

$deleteMethod

/*
QPoint pos() const
*/
$method=|QPoint|pos|

/*
QPoint globalPos() const
*/
$method=|QPoint|globalPos|

/*
int x() const
*/
$method=|int|x|

/*
int y() const
*/
$method=|int|y|

/*
int globalX() const
*/
$method=|int|globalX|

/*
int globalY() const
*/
$method=|int|globalY|

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
