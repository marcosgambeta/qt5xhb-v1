$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTANIMATION
#endif

CLASS QAnimationGroup INHERIT QAbstractAnimation

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD addAnimation
   METHOD animationAt
   METHOD animationCount
   METHOD clear
   METHOD indexOfAnimation
   METHOD insertAnimation
   METHOD removeAnimation
   METHOD takeAnimation

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
void addAnimation ( QAbstractAnimation * animation )
*/
$method=|void|addAnimation|QAbstractAnimation *

/*
QAbstractAnimation * animationAt ( int index ) const
*/
$method=|QAbstractAnimation *|animationAt|int

/*
int animationCount () const
*/
$method=|int|animationCount|

/*
void clear ()
*/
$method=|void|clear|

/*
int indexOfAnimation ( QAbstractAnimation * animation ) const
*/
$method=|int|indexOfAnimation|QAbstractAnimation *

/*
void insertAnimation ( int index, QAbstractAnimation * animation )
*/
$method=|void|insertAnimation|int,QAbstractAnimation *

/*
void removeAnimation ( QAbstractAnimation * animation )
*/
$method=|void|removeAnimation|QAbstractAnimation *

/*
QAbstractAnimation * takeAnimation ( int index )
*/
$method=|QAbstractAnimation *|takeAnimation|int

#pragma ENDDUMP
