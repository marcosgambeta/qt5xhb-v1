%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSENSORBACKEND
#endif

CLASS QSensorBackendFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD createBackend

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$prototype=virtual QSensorBackend *createBackend(QSensor *sensor) = 0
$virtualMethod=5,1,0|QSensorBackend *|createBackend|QSensor *

$extraMethods

#pragma ENDDUMP
