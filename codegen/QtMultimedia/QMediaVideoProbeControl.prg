$header

#include "hbclass.ch"

CLASS QMediaVideoProbeControl INHERIT QMediaControl

   METHOD delete

   METHOD onFlush
   METHOD onVideoFrameProbed

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

#pragma ENDDUMP
