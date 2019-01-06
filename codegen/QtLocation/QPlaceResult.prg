%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtLocation

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QPlaceSearchResult

$addMethods

$endClass

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
