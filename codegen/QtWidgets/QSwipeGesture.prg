$header

#include "hbclass.ch"

CLASS QSwipeGesture INHERIT QGesture

   METHOD delete
   METHOD horizontalDirection
   METHOD setSwipeAngle
   METHOD swipeAngle
   METHOD verticalDirection

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
SwipeDirection horizontalDirection() const
*/
$method=|QSwipeGesture::SwipeDirection|horizontalDirection|

/*
void setSwipeAngle(qreal value)
*/
$method=|void|setSwipeAngle|qreal

/*
qreal swipeAngle() const
*/
$method=|qreal|swipeAngle|

/*
SwipeDirection verticalDirection() const
*/
$method=|QSwipeGesture::SwipeDirection|verticalDirection|

#pragma ENDDUMP
