%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QStateMachine>
#include <QState>

$deleteMethod

$prototype=QStateMachine * machine () const
$method=|QStateMachine *|machine|

$prototype=QState * parentState () const
$method=|QState *|parentState|

$beginSignals
$signal=|entered()
$signal=|exited()
$endSignals

#pragma ENDDUMP
