$header

#include "hbclass.ch"

CLASS QAccessibleStateChangeEvent INHERIT QAccessibleEvent

   DATA self_destruction INIT .F.

   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

#pragma ENDDUMP
