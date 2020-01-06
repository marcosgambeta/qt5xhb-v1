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

$beginClassFrom=QSensorReading

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=qreal yRotation() const
$method=5,1,0|qreal|yRotation|

$prototype=void setYRotation(qreal y)
$method=5,1,0|void|setYRotation|qreal

$prototype=qreal xRotation() const
$method=5,1,0|qreal|xRotation|

$prototype=void setXRotation(qreal x)
$method=5,1,0|void|setXRotation|qreal

#pragma ENDDUMP
