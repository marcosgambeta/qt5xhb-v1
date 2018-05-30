%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSensorReading

   METHOD delete
   METHOD pressure
   METHOD setPressure

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=qreal pressure() const
$method=5,1,0|qreal|pressure|

$prototype=void setPressure(qreal pressure)
$method=5,1,0|void|setPressure|qreal

#pragma ENDDUMP
