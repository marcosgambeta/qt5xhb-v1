$header

#include "hbclass.ch"

CLASS QTimerEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD timerId

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTimerEvent(int timerId)
*/
$constructor=|new|int

$deleteMethod

/*
int timerId() const
*/
$method=|int|timerId|

#pragma ENDDUMP
