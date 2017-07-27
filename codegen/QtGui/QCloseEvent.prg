$header

#include "hbclass.ch"

CLASS QCloseEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QCloseEvent ()
*/
$constructor=|new|

$deleteMethod

#pragma ENDDUMP
