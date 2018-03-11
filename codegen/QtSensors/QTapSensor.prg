%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTAPREADING
#endif

CLASS QTapSensor INHERIT QSensor

   METHOD new
   METHOD delete
   METHOD reading
   METHOD returnDoubleTapEvents
   METHOD setReturnDoubleTapEvents

   METHOD onReturnDoubleTapEventsChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$prototype=QTapSensor(QObject *parent = 0)
$constructor=5,1,0|new|QObject *=0

$deleteMethod=5,1,0

$prototype=QTapReading *reading() const
$method=5,1,0|QTapReading *|reading|

$prototype=bool returnDoubleTapEvents() const
$method=5,1,0|bool|returnDoubleTapEvents|

$prototype=void setReturnDoubleTapEvents(bool returnDoubleTapEvents)
$method=5,1,0|void|setReturnDoubleTapEvents|bool

$beginSignals
$signal=5,1,0|returnDoubleTapEventsChanged(bool)
$endSignals

#pragma ENDDUMP
