$header

#include "hbclass.ch"

CLASS QFinalState INHERIT QAbstractState

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QFinalState(QState * parent = 0)
$constructor=|new|QState *=0

$deleteMethod

#pragma ENDDUMP
