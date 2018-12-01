%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtLocation

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QPlaceReply

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=explicit QPlaceMatchReply(QObject *parent = 0)
$constructor=5,4,0|new|QObject *=0

$deleteMethod=5,4,0

$prototype=QPlaceReply::Type type() const
$method=5,4,0|QPlaceReply::Type|type|

$prototype=QList<QPlace> places() const
$method=5,4,0|QList<QPlace>|places|

$prototype=QPlaceMatchRequest request() const
$method=5,4,0|QPlaceMatchRequest|request|

#pragma ENDDUMP
