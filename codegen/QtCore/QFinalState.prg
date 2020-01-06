%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractState

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QFinalState(QState * parent = 0)
$constructor=|new|QState *=0

$deleteMethod

#pragma ENDDUMP
