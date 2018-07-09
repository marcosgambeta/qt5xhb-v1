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

$prototype=QExposeEvent(const QRegion & rgn)
$constructor=|new|const QRegion &

$deleteMethod

$prototype=const QRegion & region() const
$method=|const QRegion &|region|

#pragma ENDDUMP
