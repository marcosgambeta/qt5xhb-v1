$header

#include "hbclass.ch"

CLASS QParallelAnimationGroup INHERIT QAnimationGroup

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD duration

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QParallelAnimationGroup ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
virtual int duration () const
*/
$method=|int|duration|

#pragma ENDDUMP
