$header

#include "hbclass.ch"

CLASS QSGDynamicTexture INHERIT QSGTexture

   DATA self_destruction INIT .F.

   METHOD updateTexture

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
virtual bool updateTexture() = 0
*/
$virtualMethod=|bool|updateTexture|

#pragma ENDDUMP
