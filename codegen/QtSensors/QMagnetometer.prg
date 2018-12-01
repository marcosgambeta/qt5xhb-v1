%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSensors

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMAGNETOMETERREADING
#endif

$beginClassFrom=QSensor

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$prototype=QMagnetometer(QObject *parent = 0)
$constructor=5,1,0|new|QObject *=0

$deleteMethod=5,1,0

$prototype=QMagnetometerReading *reading() const
$method=5,1,0|QMagnetometerReading *|reading|

$prototype=bool returnGeoValues() const
$method=5,1,0|bool|returnGeoValues|

$prototype=void setReturnGeoValues(bool returnGeoValues)
$method=5,1,0|void|setReturnGeoValues|bool

$beginSignals
$signal=5,1,0|returnGeoValuesChanged(bool)
$endSignals

#pragma ENDDUMP
