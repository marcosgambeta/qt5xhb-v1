%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QPlaceReply

   METHOD new
   METHOD delete
   METHOD suggestions
   METHOD type

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$prototype=explicit QPlaceSearchSuggestionReply(QObject *parent = 0)
$constructor=5,4,0|new|QObject *=0

$deleteMethod=5,4,0

$prototype=QStringList suggestions() const
$method=5,4,0|QStringList|suggestions|

$prototype=Type type() const
$method=5,4,0|QPlaceReply::Type|type|

#pragma ENDDUMP
