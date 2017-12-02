$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACE
#endif

CLASS QPlaceResult INHERIT QPlaceSearchResult

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

$prototype=QPlaceResult()
$constructor=5,4,0|new|

$deleteMethod=5,4,0

$prototype=qreal distance() const
$method=5,4,0|qreal|distance|

$prototype=void setDistance(qreal distance)
$method=5,4,0|void|setDistance|qreal

$prototype=QPlace place() const
$method=5,4,0|QPlace|place|

$prototype=void setPlace(const QPlace &place)
$method=5,4,0|void|setPlace|const QPlace &

$prototype=bool isSponsored() const
$method=5,4,0|bool|isSponsored|

$prototype=void setSponsored(bool sponsored)
$method=5,4,0|void|setSponsored|bool

#pragma ENDDUMP
