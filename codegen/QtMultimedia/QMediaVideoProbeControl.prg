$header

#include "hbclass.ch"

CLASS QMediaVideoProbeControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

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
