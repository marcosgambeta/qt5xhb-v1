$header

#include "hbclass.ch"

CLASS QMediaAvailabilityControl INHERIT QMediaControl

   METHOD delete
   METHOD availability

   METHOD onAvailabilityChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QMultimedia::AvailabilityStatus availability() const = 0
$virtualMethod=|QMultimedia::AvailabilityStatus|availability|

#pragma ENDDUMP
