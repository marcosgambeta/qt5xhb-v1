%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClassFrom=QEvent

   METHOD new
   METHOD delete

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=QWinEvent(int type)
$constructor=5,2,0|new|int

$deleteMethod=5,2,0

#pragma ENDDUMP
