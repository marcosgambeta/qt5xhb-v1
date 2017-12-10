$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QSIZEF
REQUEST QRECTF
#endif

CLASS QScrollPrepareEvent INHERIT QEvent

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
