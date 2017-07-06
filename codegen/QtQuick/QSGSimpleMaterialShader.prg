$header

#include "hbclass.ch"

CLASS QSGSimpleMaterialShader INHERIT QSGMaterialShader

   DATA self_destruction INIT .F.

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#pragma ENDDUMP
