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
   METHOD reflectance
   METHOD setReflectance

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=qreal reflectance() const
$method=5,1,0|qreal|reflectance|

$prototype=void setReflectance(qreal reflectance)
$method=5,1,0|void|setReflectance|qreal

#pragma ENDDUMP
