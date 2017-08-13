$header

#include "hbclass.ch"

CLASS QMediaAvailabilityControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD availability

   METHOD onAvailabilityChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QMultimedia::AvailabilityStatus availability() const = 0
*/
$method=|QMultimedia::AvailabilityStatus|availability|

#pragma ENDDUMP
