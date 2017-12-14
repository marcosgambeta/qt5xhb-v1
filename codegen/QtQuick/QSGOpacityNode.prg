$header

#include "hbclass.ch"

CLASS QSGOpacityNode INHERIT QSGNode

   METHOD new
   METHOD delete
   METHOD opacity
   METHOD setOpacity

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSGOpacityNode()
$constructor=|new|

$deleteMethod

$prototype=qreal opacity() const
$method=|qreal|opacity|

$prototype=void setOpacity(qreal opacity)
$method=|void|setOpacity|qreal

#pragma ENDDUMP
