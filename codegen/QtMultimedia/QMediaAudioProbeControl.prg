$header

#include "hbclass.ch"

CLASS QMediaAudioProbeControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete

   METHOD onAudioBufferProbed
   METHOD onFlush

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

#pragma ENDDUMP
