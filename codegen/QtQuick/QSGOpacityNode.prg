$header

#include "hbclass.ch"

CLASS QSGOpacityNode INHERIT QSGNode

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD opacity
   METHOD setOpacity

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSGOpacityNode()
*/
$constructor=|new|

$deleteMethod

/*
qreal opacity() const
*/
$method=|qreal|opacity|

/*
void setOpacity(qreal opacity)
*/
$method=|void|setOpacity|qreal

#pragma ENDDUMP
