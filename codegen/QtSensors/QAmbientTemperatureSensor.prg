%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSensors

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSensor

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$prototype=QAmbientTemperatureSensor(QObject *parent = 0)
$constructor=5,1,0|new|QObject *=0

$deleteMethod=5,1,0

$prototype=QAmbientTemperatureReading *reading() const
$method=5,1,0|QAmbientTemperatureReading *|reading|

#pragma ENDDUMP
