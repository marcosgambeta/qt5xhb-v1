$header

#include "hbclass.ch"

CLASS QIconDragEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QIconDragEvent()
*/
$constructor=|new|

$deleteMethod

#pragma ENDDUMP
