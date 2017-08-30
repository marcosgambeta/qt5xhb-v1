$header

#include "hbclass.ch"

CLASS QToolBarChangeEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD toggle

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QToolBarChangeEvent(bool t)
*/
$constructor=|new|bool

$deleteMethod

/*
bool toggle() const
*/
$method=|bool|toggle|

#pragma ENDDUMP
