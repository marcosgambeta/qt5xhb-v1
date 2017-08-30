$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QSIZEF
REQUEST QRECTF
#endif

CLASS QScrollPrepareEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD startPos
   METHOD viewportSize
   METHOD contentPosRange
   METHOD contentPos
   METHOD setViewportSize
   METHOD setContentPosRange
   METHOD setContentPos

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QScrollPrepareEvent(const QPointF &startPos)
*/
$constructor=|new|const QPointF &

$deleteMethod

/*
QPointF startPos() const
*/
$method=|QPointF|startPos|

/*
QSizeF viewportSize() const
*/
$method=|QSizeF|viewportSize|

/*
QRectF contentPosRange() const
*/
$method=|QRectF|contentPosRange|

/*
QPointF contentPos() const
*/
$method=|QPointF|contentPos|

/*
void setViewportSize(const QSizeF &size)
*/
$method=|void|setViewportSize|const QSizeF &

/*
void setContentPosRange(const QRectF &rect)
*/
$method=|void|setContentPosRange|const QRectF &

/*
void setContentPos(const QPointF &pos)
*/
$method=|void|setContentPos|const QPointF &

#pragma ENDDUMP
