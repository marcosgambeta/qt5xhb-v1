$header

#include "hbclass.ch"

CLASS QInputEvent INHERIT QEvent

   METHOD delete
   METHOD modifiers

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=Qt::KeyboardModifiers modifiers () const
$method=|Qt::KeyboardModifiers|modifiers|

#pragma ENDDUMP
