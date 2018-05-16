%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClassFrom=QEvent

   METHOD new
   METHOD applicationState

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QApplicationStateChangeEvent(Qt::ApplicationState state)
$constructor=|new|Qt::ApplicationState

$prototype=Qt::ApplicationState applicationState() const
$method=|Qt::ApplicationState|applicationState|

#pragma ENDDUMP
