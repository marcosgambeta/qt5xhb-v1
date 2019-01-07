%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSensors

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSensorReading

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=bool holstered() const
$method=5,1,0|bool|holstered|

$prototype=void setHolstered(bool holstered)
$method=5,1,0|void|setHolstered|bool

#pragma ENDDUMP
