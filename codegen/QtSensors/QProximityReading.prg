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

$prototype=bool close() const
$method=5,1,0|bool|close|

$prototype=void setClose(bool close)
$method=5,1,0|void|setClose|bool

#pragma ENDDUMP
