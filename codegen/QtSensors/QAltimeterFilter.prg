%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QAltimeterFilter INHERIT QSensorFilter

   METHOD delete
   METHOD filter

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <Qt>

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=virtual bool filter(QAltimeterReading *reading) = 0
$virtualMethod=5,1,0|bool|filter|QAltimeterReading *

#pragma ENDDUMP
