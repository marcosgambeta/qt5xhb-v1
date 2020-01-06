%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSensors

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$prototype=QSensorGesture(const QStringList &ids, QObject *parent = 0)
$constructor=5,1,0|new|const QStringList &,QObject *=0

$deleteMethod=5,1,0

$prototype=bool isActive()
$method=5,1,0|bool|isActive|

$prototype=QStringList validIds() const
$method=5,1,0|QStringList|validIds|

$prototype=QStringList invalidIds() const
$method=5,1,0|QStringList|invalidIds|

$prototype=QStringList gestureSignals() const
$method=5,1,0|QStringList|gestureSignals|

$prototype=void startDetection()
$method=5,1,0|void|startDetection|

$prototype=void stopDetection()
$method=5,1,0|void|stopDetection|

$beginSignals
$signal=5,1,0|detected(QString)
$endSignals

#pragma ENDDUMP
