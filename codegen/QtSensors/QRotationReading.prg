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
   METHOD x
   METHOD y
   METHOD z
   METHOD setFromEuler

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=qreal x() const
$method=5,1,0|qreal|x|

$prototype=qreal y() const
$method=5,1,0|qreal|y|

$prototype=qreal z() const
$method=5,1,0|qreal|z|

$prototype=void setFromEuler(qreal x, qreal y, qreal z)
$method=5,1,0|void|setFromEuler|qreal,qreal,qreal

#pragma ENDDUMP
