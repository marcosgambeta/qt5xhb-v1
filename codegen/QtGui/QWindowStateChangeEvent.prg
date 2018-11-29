%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWindowStateChangeEvent(Qt::WindowStates aOldState, bool isOverride = false)
$constructor=|new|Qt::WindowStates,bool=false

$deleteMethod

$prototype=Qt::WindowStates oldState() const
$method=|Qt::WindowStates|oldState|

$prototype=bool isOverride() const
$method=|bool|isOverride|

#pragma ENDDUMP
