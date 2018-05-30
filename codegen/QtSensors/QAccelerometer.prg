%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSensor

   METHOD new
   METHOD delete
   METHOD accelerationMode
   METHOD setAccelerationMode
   METHOD reading

   METHOD onAccelerationModeChanged

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$prototype=QAccelerometer(QObject *parent = 0)
$constructor=5,1,0|new|QObject *=0

$deleteMethod=5,1,0

$prototype=AccelerationMode accelerationMode() const
$method=5,1,0|QAccelerometer::AccelerationMode|accelerationMode|

$prototype=void setAccelerationMode(AccelerationMode accelerationMode)
$method=5,1,0|void|setAccelerationMode|QAccelerometer::AccelerationMode

$prototype=QAccelerometerReading *reading() const
$method=5,1,0|QAccelerometerReading *|reading|

$beginSignals
$signal=5,1,0|accelerationModeChanged(QAccelerometer::AccelerationMode)
$endSignals

#pragma ENDDUMP
