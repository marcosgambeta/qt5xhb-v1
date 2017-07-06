$header

#include "hbclass.ch"

CLASS QSGSimpleMaterial INHERIT QSGMaterial

   DATA self_destruction INIT .F.

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#pragma ENDDUMP
