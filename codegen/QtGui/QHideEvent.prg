$header

#include "hbclass.ch"

CLASS QHideEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QHideEvent ()
*/
$constructor=|new|

$deleteMethod

#pragma ENDDUMP
