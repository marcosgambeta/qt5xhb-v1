$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACE
#endif

CLASS QPlaceResult INHERIT QPlaceSearchResult

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD distance
   METHOD setDistance
   METHOD place
   METHOD setPlace
   METHOD isSponsored
   METHOD setSponsored

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
QPlaceResult()
*/
$constructor=5,4,0|new|

$deleteMethod=5,4,0

/*
qreal distance() const
*/
$method=5,4,0|qreal|distance|

/*
void setDistance(qreal distance)
*/
$method=5,4,0|void|setDistance|qreal

/*
QPlace place() const
*/
$method=5,4,0|QPlace|place|

/*
void setPlace(const QPlace &place)
*/
$method=5,4,0|void|setPlace|const QPlace &

/*
bool isSponsored() const
*/
$method=5,4,0|bool|isSponsored|

/*
void setSponsored(bool sponsored)
*/
$method=5,4,0|void|setSponsored|bool

#pragma ENDDUMP
