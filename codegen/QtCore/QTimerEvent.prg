%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

   METHOD new
   METHOD delete
   METHOD timerId

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTimerEvent(int timerId)
$constructor=|new|int

$deleteMethod

$prototype=int timerId() const
$method=|int|timerId|

#pragma ENDDUMP
