$header

#include "hbclass.ch"

CLASS QDragLeaveEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDragLeaveEvent ()
*/
$constructor=|new|

$deleteMethod

#pragma ENDDUMP
