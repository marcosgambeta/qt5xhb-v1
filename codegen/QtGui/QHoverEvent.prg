%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QHoverEvent ( Type type, const QPoint & pos, const QPoint & oldPos )
$constructor=|new|QEvent::Type,const QPoint &,const QPoint &

$deleteMethod

#pragma ENDDUMP
