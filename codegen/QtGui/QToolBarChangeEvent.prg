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
   METHOD toggle

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QToolBarChangeEvent(bool t)
$constructor=|new|bool

$deleteMethod

$prototype=bool toggle() const
$method=|bool|toggle|

#pragma ENDDUMP
