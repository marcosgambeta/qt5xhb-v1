%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QAmbientTemperatureReading INHERIT QSensorReading

   METHOD delete
   METHOD temperature
   METHOD setTemperature

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=qreal temperature() const
$method=5,1,0|qreal|temperature|

$prototype=void setTemperature(qreal temperature)
$method=5,1,0|void|setTemperature|qreal

#pragma ENDDUMP
