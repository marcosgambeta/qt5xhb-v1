$header

#include "hbclass.ch"

CLASS QParallelAnimationGroup INHERIT QAnimationGroup

   METHOD new
   METHOD delete
   METHOD duration

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QParallelAnimationGroup ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=virtual int duration () const
$virtualMethod=|int|duration|

#pragma ENDDUMP
