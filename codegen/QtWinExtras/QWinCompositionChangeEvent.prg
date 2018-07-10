%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWinEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=explicit QWinCompositionChangeEvent(bool enabled)
$constructor=5,2,0|new|bool

$deleteMethod=5,2,0

$prototype=bool isCompositionEnabled() const
$method=5,2,0|bool|isCompositionEnabled|

#pragma ENDDUMP
