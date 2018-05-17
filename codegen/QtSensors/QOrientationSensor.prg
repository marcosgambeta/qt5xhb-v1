%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QORIENTATIONREADING
#endif

$beginClassFrom=QSensor

   METHOD new
   METHOD delete
   METHOD reading

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$prototype=QOrientationSensor(QObject *parent = 0)
$constructor=5,1,0|new|QObject *=0

$deleteMethod=5,1,0

$prototype=QOrientationReading *reading() const
$method=5,1,0|QOrientationReading *|reading|

#pragma ENDDUMP
