%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$prototype=qreal azimuth() const
$method=5,1,0|qreal|azimuth|

$prototype=void setAzimuth(qreal azimuth)
$method=5,1,0|void|setAzimuth|qreal

$prototype=qreal calibrationLevel() const
$method=5,1,0|qreal|calibrationLevel|

$prototype=void setCalibrationLevel(qreal calibrationLevel)
$method=5,1,0|void|setCalibrationLevel|qreal

#pragma ENDDUMP
