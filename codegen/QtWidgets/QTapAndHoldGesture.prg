$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QTapAndHoldGesture INHERIT QGesture

   METHOD delete
   METHOD position
   METHOD setPosition
   METHOD setTimeout
   METHOD timeout

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=QPointF position() const
$method=|QPointF|position|

$prototype=void setPosition(const QPointF & pos)
$method=|void|setPosition|const QPointF &

$prototype=static void setTimeout(int msecs)
$staticMethod=|void|setTimeout|int

$prototype=static int timeout()
$staticMethod=|int|timeout|

#pragma ENDDUMP
