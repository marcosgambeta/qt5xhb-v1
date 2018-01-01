%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTILTREADING
#endif

CLASS QTiltSensor INHERIT QSensor

   METHOD new
   METHOD delete
   METHOD reading
   METHOD calibrate

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$prototype=QTiltSensor(QObject *parent = 0)
$constructor=5,1,0|new|QObject *=0

$deleteMethod=5,1,0

$prototype=QTiltReading *reading() const
$method=5,1,0|QTiltReading *|reading|

$prototype=void calibrate()
$method=5,1,0|void|calibrate|

#pragma ENDDUMP
