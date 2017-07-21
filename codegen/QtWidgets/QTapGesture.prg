$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QTapGesture INHERIT QGesture

   METHOD delete
   METHOD position
   METHOD setPosition

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
QPointF position() const
*/
$method=|QPointF|position|

/*
void setPosition(const QPointF & pos)
*/
$method=|void|setPosition|const QPointF &

#pragma ENDDUMP
