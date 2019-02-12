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

#include <QtLocation/QPlaceSearchRequest>

$prototype=QPlaceProposedSearchResult()
$constructor=5,4,0|new|

$deleteMethod=5,4,0

$prototype=QPlaceSearchRequest searchRequest() const
$method=5,4,0|QPlaceSearchRequest|searchRequest|

$prototype=void setSearchRequest(const QPlaceSearchRequest &request)
$method=5,4,0|void|setSearchRequest|const QPlaceSearchRequest &

#pragma ENDDUMP
