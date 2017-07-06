$header

#include "hbclass.ch"

CLASS QMacCocoaViewContainer INHERIT QWidget

   DATA self_destruction INIT .F.

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#pragma ENDDUMP
