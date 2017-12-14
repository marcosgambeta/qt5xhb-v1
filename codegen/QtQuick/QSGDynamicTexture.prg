$header

#include "hbclass.ch"

CLASS QSGDynamicTexture INHERIT QSGTexture

   METHOD updateTexture

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual bool updateTexture() = 0
$virtualMethod=|bool|updateTexture|

#pragma ENDDUMP
