$header

#include "hbclass.ch"

CLASS QMediaControl INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

#pragma ENDDUMP
