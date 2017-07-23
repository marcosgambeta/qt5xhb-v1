$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAUSEANIMATION
REQUEST QABSTRACTANIMATION
#endif

CLASS QSequentialAnimationGroup INHERIT QAnimationGroup

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addPause
   METHOD currentAnimation
   METHOD insertPause
   METHOD duration

   METHOD onCurrentAnimationChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSequentialAnimationGroup ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
QPauseAnimation * addPause ( int msecs )
*/
$method=|QPauseAnimation *|addPause|int

/*
QAbstractAnimation * currentAnimation () const
*/
$method=|QAbstractAnimation *|currentAnimation|

/*
QPauseAnimation * insertPause ( int index, int msecs )
*/
$method=|QPauseAnimation *|insertPause|int,int

/*
virtual int duration () const
*/
$method=|int|duration|

#pragma ENDDUMP
