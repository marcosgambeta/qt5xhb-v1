%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSensors

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSensor

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$prototype=QRotationSensor(QObject *parent = 0)
$constructor=5,1,0|new|QObject *=0

$deleteMethod=5,1,0

$prototype=QRotationReading *reading() const
$method=5,1,0|QRotationReading *|reading|

$prototype=bool hasZ() const
$method=5,1,0|bool|hasZ|

$prototype=void setHasZ(bool hasZ)
$method=5,1,0|void|setHasZ|bool

$beginSignals
$signal=5,1,0|hasZChanged(bool)
$endSignals

#pragma ENDDUMP
