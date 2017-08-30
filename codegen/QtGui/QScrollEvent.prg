$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QScrollEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD contentPos
   METHOD overshootDistance
   METHOD scrollState

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QScrollEvent(const QPointF &contentPos, const QPointF &overshoot, ScrollState scrollState)
*/
$constructor=|new|const QPointF &,const QPointF &,QScrollEvent::ScrollState

$deleteMethod

/*
QPointF contentPos() const
*/
$method=|QPointF|contentPos|

/*
QPointF overshootDistance() const
*/
$method=|QPointF|overshootDistance|

/*
ScrollState scrollState() const
*/
$method=|QScrollEvent::ScrollState|scrollState|

#pragma ENDDUMP
