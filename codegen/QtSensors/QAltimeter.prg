%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QALTIMETERREADING
#endif

CLASS QAltimeter INHERIT QSensor

   METHOD new
   METHOD delete
   METHOD reading

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$prototype=QAltimeter(QObject *parent = 0)
$constructor=5,1,0|QObject *=0

$deleteMethod=5,1,0

$prototype=QAltimeterReading *reading() const
$method=5,1,0|QAltimeterReading *|reading|

#pragma ENDDUMP
