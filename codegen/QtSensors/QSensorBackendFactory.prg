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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

#include <QSensorBackend>

$prototype=virtual QSensorBackend *createBackend(QSensor *sensor) = 0
$virtualMethod=5,1,0|QSensorBackend *|createBackend|QSensor *

$extraMethods

#pragma ENDDUMP
