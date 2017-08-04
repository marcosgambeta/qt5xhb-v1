$header

#include "hbclass.ch"

CLASS QGraphicsTransform INHERIT QObject

   METHOD delete
   METHOD applyTo

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual void applyTo ( QMatrix4x4 * matrix ) const = 0
*/
$method=|void|applyTo|QMatrix4x4 *

#pragma ENDDUMP
