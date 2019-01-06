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

$beginClassFrom=QPlaceReply

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=explicit QPlaceDetailsReply(QObject *parent = 0)
$constructor=5,4,0|new|QObject *=0

$deleteMethod=5,4,0

$prototype=QPlaceReply::Type type() const
$method=5,4,0|QPlaceReply::Type|type|

$prototype=QPlace place() const
$method=5,4,0|QPlace|place|

#pragma ENDDUMP
