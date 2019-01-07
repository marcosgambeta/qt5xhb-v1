%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=QSensorGestureManager(QObject *parent = 0)
$constructor=5,1,0|new|QObject *=0

$deleteMethod=5,1,0

$prototype=bool registerSensorGestureRecognizer(QSensorGestureRecognizer *recognizer)
$method=5,1,0|bool|registerSensorGestureRecognizer|QSensorGestureRecognizer *

$prototype=QStringList gestureIds() const
$method=5,1,0|QStringList|gestureIds|

$prototype=QStringList recognizerSignals(const QString &recognizerId) const
$method=5,1,0|QStringList|recognizerSignals|const QString &

$prototype=static QSensorGestureRecognizer *sensorGestureRecognizer(const QString &id)
$staticMethod=5,1,0|QSensorGestureRecognizer *|sensorGestureRecognizer|const QString &

$beginSignals
$signal=5,1,0|newSensorGestureAvailable()
$endSignals

#pragma ENDDUMP
