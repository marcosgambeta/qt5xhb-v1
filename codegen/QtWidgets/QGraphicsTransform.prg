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

$prototype=virtual void applyTo ( QMatrix4x4 * matrix ) const = 0
$virtualMethod=|void|applyTo|QMatrix4x4 *

#pragma ENDDUMP
