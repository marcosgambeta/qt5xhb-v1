$header

#include "hbclass.ch"

CLASS QInputEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD modifiers

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
Qt::KeyboardModifiers modifiers () const
*/
$method=|Qt::KeyboardModifiers|modifiers|

#pragma ENDDUMP
